## 2.0.0

* **Breaking — `OutputLabel.spendable` is now `bool?` (was required `bool`):** per BIP-329 `spendable` is optional and "if omitted, the importing wallet should not alter these values", so an omitted `spendable` now parses to `null` (the spec's "do not alter" state) instead of throwing — previously a valid BIP-329 output record without `spendable` failed to parse. Consumers reading the field must handle `null` (e.g. check `spendable == false` for an explicitly do-not-spend output).
* **Serialization omits null/absent fields (`ignoreNull`):** optional fields that are null are no longer emitted as `"field": null`; they are omitted, matching the spec's examples, and an absent `spendable` round-trips as absent.
* **Tooling:** SDK floor raised to Dart `^3.8.0` (minimum required by `flutter_lints ^6.0.0`); `dart_mappable` runtime constraint unchanged (`^4.6.0`) so consumer compatibility is otherwise preserved.

## 1.0.1

- remove linter infos from example

## 1.0.0

* **Core Features:**
  - All 6 label types: `tx`, `addr`, `pubkey`, `input`, `output`, `xpub`
  - Required fields: `type`, `ref`, `label`
  - Optional fields: `origin`, `spendable`
  - JSON serialization/deserialization with dart_mappable
* **Additional Fields Support:**
  - Transaction fields: `height`, `time`, `fee`, `value`, `rate`
  - Address fields: `keypath`, `heights`
  - Input/Output fields: `keypath`, `value`, `fmv`, `height`, `time`
* **JSON Lines Format:**
  - `Bip329Label.toJsonLines()` - Export to newline-delimited JSON
  - `Bip329Label.fromJsonLines()` - Import from newline-delimited JSON
  - Full BIP-329 specification compliance
