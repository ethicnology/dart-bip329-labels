import 'dart:convert';

import 'package:bip329_labels/bip329_labels.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('OutputLabel.spendable is optional (BIP-329)', () {
    test('an output record that omits spendable parses as null (no throw)', () {
      const line = '{"type":"output","ref":"abc:0","label":"hi"}';

      final label = Bip329Label.fromJsonLines(line).single as OutputLabel;

      expect(label.spendable, isNull);
      expect(label.label, 'hi');
    });

    test('an omitted spendable round-trips as absent, not null', () {
      const label = OutputLabel(ref: 'abc:0', label: 'hi');

      final json = jsonDecode(label.toJson()) as Map<String, dynamic>;
      expect(json.containsKey('spendable'), isFalse);

      final back = Bip329Label.fromJson(label.toJson()) as OutputLabel;
      expect(back.spendable, isNull);
    });

    test('explicit true/false round-trip and are serialized', () {
      for (final value in [true, false]) {
        const ref = 'abc:0';
        final label = OutputLabel(ref: ref, label: 'x', spendable: value);
        final json = jsonDecode(label.toJson()) as Map<String, dynamic>;
        expect(json['spendable'], value);
        final back = Bip329Label.fromJson(label.toJson()) as OutputLabel;
        expect(back.spendable, value);
      }
    });

    test('null optional fields are omitted from JSON (ignoreNull)', () {
      const label = OutputLabel(ref: 'abc:0', label: 'hi');

      final json = jsonDecode(label.toJson()) as Map<String, dynamic>;
      expect(json.keys.toSet(), {'ref', 'label', 'type'});
    });
  });
}
