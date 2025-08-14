# BIP-329 Labels


[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A Dart implementation of [BIP-329: Wallet Labels Export Format](https://github.com/bitcoin/bips/blob/master/bip-0329.mediawiki) for Bitcoin wallet label interoperability.

## Installation

```sh
flutter pub add bip329_labels
```

## Supported Types

| Type | Class | Description |
|------|-------|-------------|
| `tx` | `TxLabel` | Transaction labels |
| `addr` | `AddressLabel` | Address labels |
| `pubkey` | `PubkeyLabel` | Public key labels |
| `input` | `InputLabel` | Input labels |
| `output` | `OutputLabel` | Output labels (has `spendable` field) |
| `xpub` | `XpubLabel` | Extended public key labels |


## Usage

```dart
import 'package:bip329_labels/bip329_labels.dart';

void main() {
  // --- Serialization ---
  final txid =
      'f91d0a8a78462bc59398f2c5d7a84fcff491c26ba54c4833478b202796c8aafd';
  final myLabel = 'Account #1 Transaction';
  final origin = "wpkh([d34db33f/84'/0'/1'])";

  // Wrap it up in a TxLabel
  final txLabel = TxLabel(ref: txid, label: myLabel, origin: origin);
  // Pack it into a Map and JSON
  final txMap = txLabel.toMap();
  final txJson = txLabel.toJson();

  // Another label: for an output
  final outputRef = '$txid:1';
  final myOutputLabel = 'my coinjoined output';
  final outputSpendable = false;
  final outputLabel = OutputLabel(
    ref: outputRef,
    label: myOutputLabel,
    spendable: outputSpendable,
  );
  final outputMap = outputLabel.toMap();

  // --- Deserialization ---
  // 🛠 Rebuild from a map
  Bip329Label decodedTxLabel = Bip329Label.fromMap(txMap);

  // ...or from JSON String 📦
  decodedTxLabel = Bip329Label.fromJson(txJson);

  // Quick reality check ✅
  assert(decodedTxLabel is TxLabel);
  assert(decodedTxLabel.ref == txid);
  assert(decodedTxLabel.label == myLabel);
  assert(decodedTxLabel.origin == origin);

  final decodedOutputLabel = Bip329Label.fromMap(outputMap);

  // Output label gets spendable field as specified in BIP-329
  assert(decodedOutputLabel is OutputLabel);
  assert(decodedOutputLabel.ref == outputRef);
  assert(decodedOutputLabel.label == myOutputLabel);
  assert((decodedOutputLabel as OutputLabel).spendable == outputSpendable);
}
```
