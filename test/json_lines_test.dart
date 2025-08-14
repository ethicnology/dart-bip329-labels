import 'package:flutter_test/flutter_test.dart';
import 'package:bip329_labels/bip329_labels.dart';
import 'test_vectors.dart';

void main() {
  group('BIP-329 JSON Lines Format', () {
    final testVectors = TestVectors();

    group('Import from JSON Lines', () {
      test('should import empty string correctly', () {
        final labels = Bip329Label.fromJsonLines('');
        expect(labels, isEmpty);
      });

      test('should import whitespace-only string correctly', () {
        final labels = Bip329Label.fromJsonLines('   \n  \n  ');
        expect(labels, isEmpty);
      });

      test('should import BIP-329 specification test vectors', () {
        // Exact format from BIP-329 specification
        final specJsonLines =
            '''{ "type": "tx", "ref": "f91d0a8a78462bc59398f2c5d7a84fcff491c26ba54c4833478b202796c8aafd", "label": "Transaction", "origin": "wpkh([d34db33f/84'/0'/0'])" }
{ "type": "addr", "ref": "bc1q34aq5drpuwy3wgl9lhup9892qp6svr8ldzyy7c", "label": "Address" }
{ "type": "pubkey", "ref": "0283409659355b6d1cc3c32decd5d561abaac86c37a353b52895a5e6c196d6f448", "label": "Public Key" }
{ "type": "input", "ref": "f91d0a8a78462bc59398f2c5d7a84fcff491c26ba54c4833478b202796c8aafd:0", "label": "Input" }
{ "type": "output", "ref": "f91d0a8a78462bc59398f2c5d7a84fcff491c26ba54c4833478b202796c8aafd:1", "label": "Output", "spendable": false }
{ "type": "xpub", "ref": "xpub661MyMwAqRbcFtXgS5sYJABqqG9YLmC4Q1Rdap9gSE8NqtwybGhePY2gZ29ESFjqJoCu1Rupje8YtGqsefD265TMg7usUDFdp6W1EGMcet8", "label": "Extended Public Key" }
{ "type": "tx", "ref": "f546156d9044844e02b181026a1a407abfca62e7ea1159f87bbeaa77b4286c74", "label": "Account #1 Transaction", "origin": "wpkh([d34db33f/84'/0'/1'])" }''';

        final labels = Bip329Label.fromJsonLines(specJsonLines);

        expect(labels.length, 7);
        expect(labels[0], isA<TxLabel>());
        expect(labels[1], isA<AddressLabel>());
        expect(labels[2], isA<PubkeyLabel>());
        expect(labels[3], isA<InputLabel>());
        expect(labels[4], isA<OutputLabel>());
        expect(labels[5], isA<XpubLabel>());
        expect(labels[6], isA<TxLabel>());

        // Verify specific values
        expect(labels[0].origin, "wpkh([d34db33f/84'/0'/0'])");
        expect((labels[4] as OutputLabel).spendable, false);
        expect(labels[6].label, "Account #1 Transaction");
      });
    });

    group('Round-trip Export/Import', () {
      test('should maintain data integrity through export/import cycle', () {
        final originalLabels =
            testVectors.all
                .map((vector) => Bip329Label.fromMap(vector))
                .toList();

        // Export to JSON Lines
        final jsonLines = Bip329Label.toJsonLines(originalLabels);

        // Import back from JSON Lines
        final importedLabels = Bip329Label.fromJsonLines(jsonLines);

        expect(importedLabels.length, originalLabels.length);

        for (int i = 0; i < originalLabels.length; i++) {
          expect(importedLabels[i].runtimeType, originalLabels[i].runtimeType);
          expect(importedLabels[i].ref, originalLabels[i].ref);
          expect(importedLabels[i].label, originalLabels[i].label);
          expect(importedLabels[i].origin, originalLabels[i].origin);

          // Check spendable for OutputLabel
          if (originalLabels[i] is OutputLabel) {
            final originalOutput = originalLabels[i] as OutputLabel;
            final importedOutput = importedLabels[i] as OutputLabel;
            expect(importedOutput.spendable, originalOutput.spendable);
          }
        }
      });

      test('should maintain additional fields through export/import cycle', () {
        final originalLabels = [
          TxLabelMapper.fromMap(testVectors.txWithAdditionalFields),
          AddressLabelMapper.fromMap(testVectors.addrWithAdditionalFields),
          InputLabelMapper.fromMap(testVectors.inputWithAdditionalFields),
          OutputLabelMapper.fromMap(testVectors.outputWithAdditionalFields),
        ];

        // Export to JSON Lines
        final jsonLines = Bip329Label.toJsonLines(originalLabels);

        // Import back from JSON Lines
        final importedLabels = Bip329Label.fromJsonLines(jsonLines);

        expect(importedLabels.length, 4);

        final importedTx = importedLabels[0] as TxLabel;
        final originalTx = originalLabels[0] as TxLabel;
        expect(importedTx.height, originalTx.height);
        expect(importedTx.fee, originalTx.fee);
        expect(importedTx.value, originalTx.value);
        expect(importedTx.rate, originalTx.rate);

        final importedAddr = importedLabels[1] as AddressLabel;
        final originalAddr = originalLabels[1] as AddressLabel;
        expect(importedAddr.keypath, originalAddr.keypath);
        expect(importedAddr.heights, originalAddr.heights);

        final importedInput = importedLabels[2] as InputLabel;
        final originalInput = originalLabels[2] as InputLabel;
        expect(importedInput.value, originalInput.value);
        expect(importedInput.fmv, originalInput.fmv);

        final importedOutput = importedLabels[3] as OutputLabel;
        final originalOutput = originalLabels[3] as OutputLabel;
        expect(importedOutput.spendable, originalOutput.spendable);
        expect(importedOutput.value, originalOutput.value);
        expect(importedOutput.fmv, originalOutput.fmv);
      });
    });

    group('Error Handling', () {
      test('should throw error for invalid JSON line', () {
        expect(
          () => Bip329Label.fromJsonLines('invalid json'),
          throwsException,
        );
      });

      test('should throw error for JSON line with missing required fields', () {
        expect(
          () => Bip329Label.fromJsonLines(
            '{"type":"tx","ref":"abc"}',
          ), // missing label
          throwsException,
        );
      });

      test('should throw error for JSON line with invalid type', () {
        expect(
          () => Bip329Label.fromJsonLines(
            '{"type":"invalid","ref":"abc","label":"test"}',
          ),
          throwsException,
        );
      });
    });

    group('Compliance with BIP-329', () {
      test('should support UTF-8 encoding', () {
        final label = TxLabel(
          ref: "abc123",
          label: "Café ñoño 🚀 émoji",
          origin: "wpkh([d34db33f/84'/0'/0'])",
        );

        final jsonLines = Bip329Label.toJsonLines([label]);
        final importedLabels = Bip329Label.fromJsonLines(jsonLines);

        expect(importedLabels.length, 1);
        expect(importedLabels[0].label, "Café ñoño 🚀 émoji");
      });
    });
  });
}
