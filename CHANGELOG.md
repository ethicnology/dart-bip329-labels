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
