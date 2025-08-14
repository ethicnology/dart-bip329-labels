import 'dart:convert';

import 'package:dart_mappable/dart_mappable.dart';

part 'label.mapper.dart';

@MappableClass(discriminatorKey: 'type')
abstract class Bip329Label with Bip329LabelMappable {
  final String ref;
  final String label;
  final String? origin;

  const Bip329Label({required this.ref, required this.label, this.origin});

  @override
  String toJson() {
    final map = toMap();
    map.removeWhere((key, value) => value == null);
    return json.encode(map);
  }

  factory Bip329Label.fromJson(String json) => Bip329LabelMapper.fromJson(json);

  factory Bip329Label.fromMap(Map<String, dynamic> map) =>
      Bip329LabelMapper.fromMap(map);
}

@MappableClass(discriminatorValue: 'tx')
class TxLabel extends Bip329Label with TxLabelMappable {
  const TxLabel({required super.ref, required super.label, super.origin});
}

@MappableClass(discriminatorValue: 'addr')
class AddressLabel extends Bip329Label with AddressLabelMappable {
  const AddressLabel({required super.ref, required super.label, super.origin});
}

@MappableClass(discriminatorValue: 'pubkey')
class PubkeyLabel extends Bip329Label with PubkeyLabelMappable {
  const PubkeyLabel({required super.ref, required super.label, super.origin});
}

@MappableClass(discriminatorValue: 'input')
class InputLabel extends Bip329Label with InputLabelMappable {
  const InputLabel({required super.ref, required super.label, super.origin});
}

@MappableClass(discriminatorValue: 'output')
class OutputLabel extends Bip329Label with OutputLabelMappable {
  final bool spendable;

  const OutputLabel({
    required super.ref,
    required super.label,
    super.origin,
    required this.spendable,
  });
}

@MappableClass(discriminatorValue: 'xpub')
class XpubLabel extends Bip329Label with XpubLabelMappable {
  const XpubLabel({required super.ref, required super.label, super.origin});
}
