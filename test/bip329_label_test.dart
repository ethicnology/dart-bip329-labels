import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:bip329_labels/bip329_labels.dart';
import 'test_vectors.dart';

void main() {
  group('BIP-329 Label Models', () {
    final testVectors = TestVectors();

    group('All test vectors', () {
      test('should handle all test vectors without errors', () {
        for (final vector in testVectors.all) {
          final jsonVector = jsonEncode(vector);

          expect(() => Bip329Label.fromJson(jsonVector), returnsNormally);
          expect(() => Bip329Label.fromMap(vector), returnsNormally);

          final label = Bip329Label.fromJson(jsonVector);
          expect(label.label, vector['label']);
          expect(label.ref, vector['ref']);
          expect(label.origin, vector['origin']);

          switch (vector['type']) {
            case 'tx':
              expect(label, isA<TxLabel>());
              break;
            case 'addr':
              expect(label, isA<AddressLabel>());
              break;
            case 'pubkey':
              expect(label, isA<PubkeyLabel>());
              break;
            case 'input':
              expect(label, isA<InputLabel>());
              break;
            case 'output':
              expect(label, isA<OutputLabel>());
              break;
            case 'xpub':
              expect(label, isA<XpubLabel>());
              break;
            default:
              throw Exception('Unknown type: ${vector['type']}');
          }
        }
      });
    });

    group('OutputLabel', () {
      test('must have spendable field', () {
        final outputLabel = OutputLabelMapper.fromMap(testVectors.output);

        expect(outputLabel.ref, testVectors.output['ref']);
        expect(outputLabel.label, testVectors.output['label']);
        expect(outputLabel.spendable, testVectors.output['spendable']);
        expect(outputLabel.origin, isNull);
      });
    });
  });
}
