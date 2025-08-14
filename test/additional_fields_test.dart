import 'package:flutter_test/flutter_test.dart';
import 'package:bip329_labels/bip329_labels.dart';
import 'test_vectors.dart';

void main() {
  group('BIP-329 Additional Fields', () {
    final testVectors = TestVectors();

    group('TxLabel Additional Fields', () {
      test('should handle height field correctly', () {
        final txLabel = TxLabelMapper.fromMap(
          testVectors.txWithAdditionalFields,
        );

        expect(txLabel.height, 850000);
        expect(txLabel.height, isA<int>());
      });

      test('should handle time field correctly', () {
        final txLabel = TxLabelMapper.fromMap(
          testVectors.txWithAdditionalFields,
        );

        expect(txLabel.time, isNotNull);
        expect(txLabel.time, isA<DateTime>());
        expect(
          txLabel.time!.toIso8601String(),
          startsWith('2025-01-23T11:40:35'),
        );
      });

      test('should handle fee field correctly', () {
        final txLabel = TxLabelMapper.fromMap(
          testVectors.txWithAdditionalFields,
        );

        expect(txLabel.fee, 2500);
        expect(txLabel.fee, isA<int>());
      });

      test('should handle value field correctly', () {
        final txLabel = TxLabelMapper.fromMap(
          testVectors.txWithAdditionalFields,
        );

        expect(txLabel.value, -50000);
        expect(txLabel.value, isA<int>());
      });

      test('should handle rate field correctly', () {
        final txLabel = TxLabelMapper.fromMap(
          testVectors.txWithAdditionalFields,
        );

        expect(txLabel.rate, isNotNull);
        expect(txLabel.rate!['USD'], 105620.00);
        expect(txLabel.rate!['EUR'], 89500.50);
        expect(txLabel.rate, isA<Map<String, dynamic>>());
      });

      test('should handle all additional fields together', () {
        final txLabel = TxLabelMapper.fromMap(
          testVectors.txWithAdditionalFields,
        );

        expect(txLabel.height, 850000);
        expect(txLabel.time, isNotNull);
        expect(txLabel.fee, 2500);
        expect(txLabel.value, -50000);
        expect(txLabel.rate, isNotNull);
        expect(txLabel.rate!.keys, containsAll(['USD', 'EUR']));
      });
    });

    group('AddressLabel Additional Fields', () {
      test('should handle keypath field correctly', () {
        final addrLabel = AddressLabelMapper.fromMap(
          testVectors.addrWithAdditionalFields,
        );

        expect(addrLabel.keypath, '/1/123');
        expect(addrLabel.keypath, isA<String>());
      });

      test('should handle heights field correctly', () {
        final addrLabel = AddressLabelMapper.fromMap(
          testVectors.addrWithAdditionalFields,
        );

        expect(addrLabel.heights, isNotNull);
        expect(addrLabel.heights, [850000, 850001, 850010]);
        expect(addrLabel.heights, isA<List<int>>());
        expect(addrLabel.heights!.length, 3);
      });

      test('should handle all additional fields together', () {
        final addrLabel = AddressLabelMapper.fromMap(
          testVectors.addrWithAdditionalFields,
        );

        expect(addrLabel.keypath, '/1/123');
        expect(addrLabel.heights, [850000, 850001, 850010]);
      });
    });

    group('InputLabel Additional Fields', () {
      test('should handle keypath field correctly', () {
        final inputLabel = InputLabelMapper.fromMap(
          testVectors.inputWithAdditionalFields,
        );

        expect(inputLabel.keypath, '/0/456');
        expect(inputLabel.keypath, isA<String>());
      });

      test('should handle value field correctly', () {
        final inputLabel = InputLabelMapper.fromMap(
          testVectors.inputWithAdditionalFields,
        );

        expect(inputLabel.value, 100000);
        expect(inputLabel.value, isA<int>());
      });

      test('should handle fvm field correctly', () {
        final inputLabel = InputLabelMapper.fromMap(
          testVectors.inputWithAdditionalFields,
        );

        expect(inputLabel.fvm, isNotNull);
        expect(inputLabel.fvm!['USD'], 1233.45);
        expect(inputLabel.fvm!['EUR'], 1050.20);
        expect(inputLabel.fvm, isA<Map<String, double>>());
      });

      test('should handle height field correctly', () {
        final inputLabel = InputLabelMapper.fromMap(
          testVectors.inputWithAdditionalFields,
        );

        expect(inputLabel.height, 850000);
        expect(inputLabel.height, isA<int>());
      });

      test('should handle time field correctly', () {
        final inputLabel = InputLabelMapper.fromMap(
          testVectors.inputWithAdditionalFields,
        );

        expect(inputLabel.time, isNotNull);
        expect(inputLabel.time, isA<DateTime>());
        expect(
          inputLabel.time!.toIso8601String(),
          startsWith('2025-01-23T11:40:35'),
        );
      });

      test('should handle all additional fields together', () {
        final inputLabel = InputLabelMapper.fromMap(
          testVectors.inputWithAdditionalFields,
        );

        expect(inputLabel.keypath, '/0/456');
        expect(inputLabel.value, 100000);
        expect(inputLabel.fvm, isNotNull);
        expect(inputLabel.height, 850000);
        expect(inputLabel.time, isNotNull);
      });
    });

    group('OutputLabel Additional Fields', () {
      test('should handle keypath field correctly', () {
        final outputLabel = OutputLabelMapper.fromMap(
          testVectors.outputWithAdditionalFields,
        );

        expect(outputLabel.keypath, '/1/789');
        expect(outputLabel.keypath, isA<String>());
      });

      test('should handle value field correctly', () {
        final outputLabel = OutputLabelMapper.fromMap(
          testVectors.outputWithAdditionalFields,
        );

        expect(outputLabel.value, 75000);
        expect(outputLabel.value, isA<int>());
      });

      test('should handle fvm field correctly', () {
        final outputLabel = OutputLabelMapper.fromMap(
          testVectors.outputWithAdditionalFields,
        );

        expect(outputLabel.fvm, isNotNull);
        expect(outputLabel.fvm!['USD'], 987.65);
        expect(outputLabel.fvm!['EUR'], 840.15);
        expect(outputLabel.fvm, isA<Map<String, double>>());
      });

      test('should handle height field correctly', () {
        final outputLabel = OutputLabelMapper.fromMap(
          testVectors.outputWithAdditionalFields,
        );

        expect(outputLabel.height, 850000);
        expect(outputLabel.height, isA<int>());
      });

      test('should handle time field correctly', () {
        final outputLabel = OutputLabelMapper.fromMap(
          testVectors.outputWithAdditionalFields,
        );

        expect(outputLabel.time, isNotNull);
        expect(outputLabel.time, isA<DateTime>());
        expect(
          outputLabel.time!.toIso8601String(),
          startsWith('2025-01-23T11:40:35'),
        );
      });

      test('should handle spendable field with additional fields', () {
        final outputLabel = OutputLabelMapper.fromMap(
          testVectors.outputWithAdditionalFields,
        );

        expect(outputLabel.spendable, true);
        expect(outputLabel.spendable, isA<bool>());
      });

      test('should handle all additional fields together', () {
        final outputLabel = OutputLabelMapper.fromMap(
          testVectors.outputWithAdditionalFields,
        );

        expect(outputLabel.keypath, '/1/789');
        expect(outputLabel.value, 75000);
        expect(outputLabel.fvm, isNotNull);
        expect(outputLabel.height, 850000);
        expect(outputLabel.time, isNotNull);
        expect(outputLabel.spendable, true);
      });
    });

    group('JSON Serialization with Additional Fields', () {
      test(
        'should serialize and deserialize TxLabel with additional fields',
        () {
          final originalTx = TxLabelMapper.fromMap(
            testVectors.txWithAdditionalFields,
          );
          final json = originalTx.toJson();
          final deserializedTx = Bip329Label.fromJson(json) as TxLabel;

          expect(deserializedTx.height, originalTx.height);
          expect(deserializedTx.time, originalTx.time);
          expect(deserializedTx.fee, originalTx.fee);
          expect(deserializedTx.value, originalTx.value);
          expect(deserializedTx.rate, originalTx.rate);
        },
      );

      test(
        'should serialize and deserialize AddressLabel with additional fields',
        () {
          final originalAddr = AddressLabelMapper.fromMap(
            testVectors.addrWithAdditionalFields,
          );
          final json = originalAddr.toJson();
          final deserializedAddr = Bip329Label.fromJson(json) as AddressLabel;

          expect(deserializedAddr.keypath, originalAddr.keypath);
          expect(deserializedAddr.heights, originalAddr.heights);
        },
      );

      test(
        'should serialize and deserialize InputLabel with additional fields',
        () {
          final originalInput = InputLabelMapper.fromMap(
            testVectors.inputWithAdditionalFields,
          );
          final json = originalInput.toJson();
          final deserializedInput = Bip329Label.fromJson(json) as InputLabel;

          expect(deserializedInput.keypath, originalInput.keypath);
          expect(deserializedInput.value, originalInput.value);
          expect(deserializedInput.fvm, originalInput.fvm);
          expect(deserializedInput.height, originalInput.height);
          expect(deserializedInput.time, originalInput.time);
        },
      );

      test(
        'should serialize and deserialize OutputLabel with additional fields',
        () {
          final originalOutput = OutputLabelMapper.fromMap(
            testVectors.outputWithAdditionalFields,
          );
          final json = originalOutput.toJson();
          final deserializedOutput = Bip329Label.fromJson(json) as OutputLabel;

          expect(deserializedOutput.keypath, originalOutput.keypath);
          expect(deserializedOutput.value, originalOutput.value);
          expect(deserializedOutput.fvm, originalOutput.fvm);
          expect(deserializedOutput.height, originalOutput.height);
          expect(deserializedOutput.time, originalOutput.time);
          expect(deserializedOutput.spendable, originalOutput.spendable);
        },
      );
    });

    group('Optional Fields Behavior', () {
      test('should handle missing additional fields gracefully', () {
        final basicTx = TxLabelMapper.fromMap(testVectors.tx);

        expect(basicTx.height, isNull);
        expect(basicTx.time, isNull);
        expect(basicTx.fee, isNull);
        expect(basicTx.value, isNull);
        expect(basicTx.rate, isNull);
      });

      test('should handle zero height correctly', () {
        final txWithZeroHeight = testVectors.txWithAdditionalFields.map(
          (k, v) => MapEntry(k, v),
        );
        txWithZeroHeight['height'] = 0;

        final txLabel = TxLabelMapper.fromMap(txWithZeroHeight);
        expect(txLabel.height, 0);
      });

      test('should handle empty heights array correctly', () {
        final addrWithEmptyHeights = testVectors.addrWithAdditionalFields.map(
          (k, v) => MapEntry(k, v),
        );
        addrWithEmptyHeights['heights'] = <int>[];

        final addrLabel = AddressLabelMapper.fromMap(addrWithEmptyHeights);
        expect(addrLabel.heights, isEmpty);
      });
    });
  });
}
