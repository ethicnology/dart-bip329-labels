import 'package:bip329_labels/bip329_labels.dart';
import 'package:flutter/foundation.dart';

void main() {
  // --- Serialization ---
  final txid =
      'f91d0a8a78462bc59398f2c5d7a84fcff491c26ba54c4833478b202796c8aafd';
  final myLabel = 'Account #1 Transaction';
  final origin = "wpkh([d34db33f/84'/0'/1'])";

  // Wrap it up in a cozy TxLabel
  final txLabel = TxLabel(ref: txid, label: myLabel, origin: origin);
  // Pack it into a map and JSON
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

  // --- JSON Lines Format (BIP-329 compliant export/import) ---

  // Create a list of labels for export
  final labels = [txLabel, outputLabel];

  // Export to JSON Lines format (newline-delimited JSON)
  final jsonLinesExport = Bip329Label.toJsonLines(labels);
  debugPrint('JSON Lines Export:');
  debugPrint(jsonLinesExport);

  // Import back from JSON Lines format
  final importedLabels = Bip329Label.fromJsonLines(jsonLinesExport);

  // Verify round-trip integrity
  assert(importedLabels.length == 2);
  assert(importedLabels[0] is TxLabel);
  assert(importedLabels[1] is OutputLabel);
  assert(importedLabels[0].ref == txid);
  assert((importedLabels[1] as OutputLabel).spendable == outputSpendable);

  debugPrint('✅ JSON Lines round-trip successful!');
}
