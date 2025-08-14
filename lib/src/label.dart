import 'package:dart_mappable/dart_mappable.dart';

part 'label.mapper.dart';

@MappableClass(discriminatorKey: 'type')
abstract class Bip329Label with Bip329LabelMappable {
  final String ref;
  final String label;
  final String? origin;

  const Bip329Label({required this.ref, required this.label, this.origin});

  factory Bip329Label.fromJson(String json) => Bip329LabelMapper.fromJson(json);

  factory Bip329Label.fromMap(Map<String, dynamic> map) =>
      Bip329LabelMapper.fromMap(map);
}

@MappableClass(discriminatorValue: 'tx')
class TxLabel extends Bip329Label with TxLabelMappable {
  /// An integer giving the block height where this fully confirmed transaction can be found. For transactions that are confirmed by less than 6 blocks, omit this field or provide a value of zero. (Background: Until it is fully confirmed, the "height" of a transaction is in flux and may vary due to chain reorgs. However, the consumer of the labels, may not know the current block height, so it cannot know if the height is "real" (firm, fixed) or just transitory. Therefore, it is important to omit the height unless the generating wallet considers the transaction to be confirmed.)
  final int? height;

  /// ISO-8601 formatted timestamp of the block given by the "height" field, preferably in UTC, although ISO-8601 can represent local times. Example: 2025-01-23T11:40:35Z.
  final DateTime? time;

  /// Integer giving the number of Satoshis that went to the miner for this transaction.
  final int? fee;

  /// Signed integer giving the number of Satoshis that came into the wallet by this transaction. Will be negative when sats leave the wallet. Could be zero if it is a consolidation transaction that moves from old UTXO to new
  final int? value;

  /// Exchange rate at time of transaction. This is the value of a Bitcoin, expressed in another currency, at the time of the transaction, based on user preferences for data source. Multiple currencies can be given. Keys are ISO 4217 currency codes where possible. Example: "rate": { "USD":  105620.00 }
  final Map<String, dynamic>? rate;

  const TxLabel({
    required super.ref,
    required super.label,
    super.origin,
    this.height,
    this.time,
    this.fee,
    this.value,
    this.rate,
  });
}

@MappableClass(discriminatorValue: 'addr')
class AddressLabel extends Bip329Label with AddressLabelMappable {
  /// The data needed to build full descriptor down to the specific address. This extends origin with the final two components that are unhardened (in the typical case, assuming BIP-84). Provide string /1/123 for wpkh([d34db33f/84'/0'/0'/1/123]). If the first character is not /, then it should be interpreted as a full descriptor, independent of origin (if any).
  final String? keypath;

  /// a list of block heights that contain any activity related to this address, include outputs that deposit to the address, and transactions that spend UTXOs of this address. Omit heights for transactions that are not fully confirmed. An empty array indicates the address is unused for confirmed transactions.
  final List<int>? heights;

  const AddressLabel({
    required super.ref,
    required super.label,
    super.origin,
    this.keypath,
    this.heights,
  });
}

@MappableClass(discriminatorValue: 'pubkey')
class PubkeyLabel extends Bip329Label with PubkeyLabelMappable {
  const PubkeyLabel({required super.ref, required super.label, super.origin});
}

@MappableClass(discriminatorValue: 'input')
class InputLabel extends Bip329Label with InputLabelMappable {
  /// The data needed to build full descriptor down to the specific address. This extends origin with the final two components that are unhardened (in the typical case, assuming BIP-84). Provide string /1/123 for wpkh([d34db33f/84'/0'/0'/1/123]). If the first character is not /, then it should be interpreted as a full descriptor, independent of origin (if any).
  final String? keypath;

  /// Integer with the number of Satoshis (nValue) of the input or output.
  final int? value;

  /// Fair market value of the input/output relative to some other currency, typically fiat. The value should be a mapping, from currency code to decimal number. Example: "fmv": { "USD":  1233.45 }. Most situations will have only a single currency value, and it represents the real price of the goods/services expressed in some fiat currency. This is not an exchange *rate*, but an absolute value. By dividing by the value (above), it is possible to calculate an effective change rate for the transaction.
  final Map<String, double>? fvm;

  /// An integer giving the block height where this fully confirmed transaction can be found. For transactions that are confirmed by less than 6 blocks, omit this field or provide a value of zero. (Background: Until it is fully confirmed, the "height" of a transaction is in flux and may vary due to chain reorgs. However, the consumer of the labels, may not know the current block height, so it cannot know if the height is "real" (firm, fixed) or just transitory. Therefore, it is important to omit the height unless the generating wallet considers the transaction to be confirmed.)
  final int? height;

  /// ISO-8601 formatted timestamp of the block given by the "height" field, preferably in UTC, although ISO-8601 can represent local times. Example: 2025-01-23T11:40:35Z.
  final DateTime? time;

  const InputLabel({
    required super.ref,
    required super.label,
    super.origin,
    this.keypath,
    this.value,
    this.fvm,
    this.height,
    this.time,
  });
}

@MappableClass(discriminatorValue: 'output')
class OutputLabel extends Bip329Label with OutputLabelMappable {
  final bool spendable;

  /// The data needed to build full descriptor down to the specific address. This extends origin with the final two components that are unhardened (in the typical case, assuming BIP-84). Provide string /1/123 for wpkh([d34db33f/84'/0'/0'/1/123]). If the first character is not /, then it should be interpreted as a full descriptor, independent of origin (if any).
  final String? keypath;

  /// Integer with the number of Satoshis (nValue) of the input or output.
  final int? value;

  /// Fair market value of the input/output relative to some other currency, typically fiat. The value should be a mapping, from currency code to decimal number. Example: "fmv": { "USD":  1233.45 }. Most situations will have only a single currency value, and it represents the real price of the goods/services expressed in some fiat currency. This is not an exchange *rate*, but an absolute value. By dividing by the value (above), it is possible to calculate an effective change rate for the transaction.
  final Map<String, double>? fvm;

  /// An integer giving the block height where this fully confirmed transaction can be found. For transactions that are confirmed by less than 6 blocks, omit this field or provide a value of zero. (Background: Until it is fully confirmed, the "height" of a transaction is in flux and may vary due to chain reorgs. However, the consumer of the labels, may not know the current block height, so it cannot know if the height is "real" (firm, fixed) or just transitory. Therefore, it is important to omit the height unless the generating wallet considers the transaction to be confirmed.)
  final int? height;

  /// ISO-8601 formatted timestamp of the block given by the "height" field, preferably in UTC, although ISO-8601 can represent local times. Example: 2025-01-23T11:40:35Z.
  final DateTime? time;

  const OutputLabel({
    required super.ref,
    required super.label,
    super.origin,
    required this.spendable,
    this.keypath,
    this.value,
    this.fvm,
    this.height,
    this.time,
  });
}

@MappableClass(discriminatorValue: 'xpub')
class XpubLabel extends Bip329Label with XpubLabelMappable {
  const XpubLabel({required super.ref, required super.label, super.origin});
}
