class TestVectors {
  final Map<String, dynamic> tx = {
    "type": "tx",
    "ref": "f91d0a8a78462bc59398f2c5d7a84fcff491c26ba54c4833478b202796c8aafd",
    "label": "Transaction",
    "origin": "wpkh([d34db33f/84'/0'/0'])",
  };
  final Map<String, dynamic> addr = {
    "type": "addr",
    "ref": "bc1q34aq5drpuwy3wgl9lhup9892qp6svr8ldzyy7c",
    "label": "Address",
  };
  final Map<String, dynamic> pubkey = {
    "type": "pubkey",
    "ref": "0283409659355b6d1cc3c32decd5d561abaac86c37a353b52895a5e6c196d6f448",
    "label": "Public Key",
  };
  final Map<String, dynamic> input = {
    "type": "input",
    "ref": "f91d0a8a78462bc59398f2c5d7a84fcff491c26ba54c4833478b202796c8aafd:0",
    "label": "Input",
  };
  final Map<String, dynamic> output = {
    "type": "output",
    "ref": "f91d0a8a78462bc59398f2c5d7a84fcff491c26ba54c4833478b202796c8aafd:1",
    "label": "Output",
    "spendable": false,
  };
  final Map<String, dynamic> xpub = {
    "type": "xpub",
    "ref":
        "xpub661MyMwAqRbcFtXgS5sYJABqqG9YLmC4Q1Rdap9gSE8NqtwybGhePY2gZ29ESFjqJoCu1Rupje8YtGqsefD265TMg7usUDFdp6W1EGMcet8",
    "label": "Extended Public Key",
  };
  final Map<String, dynamic> tx2 = {
    "type": "tx",
    "ref": "f546156d9044844e02b181026a1a407abfca62e7ea1159f87bbeaa77b4286c74",
    "label": "Account #1 Transaction",
    "origin": "wpkh([d34db33f/84'/0'/1'])",
  };

  final Map<String, dynamic> txWithAdditionalFields = {
    "type": "tx",
    "ref": "a1b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef123456",
    "label": "Transaction with Additional Fields",
    "origin": "wpkh([d34db33f/84'/0'/2'])",
    "height": 850000,
    "time": "2025-01-23T11:40:35Z",
    "fee": 2500,
    "value": -50000,
    "rate": {"USD": 105620.00, "EUR": 89500.50},
  };

  final Map<String, dynamic> addrWithAdditionalFields = {
    "type": "addr",
    "ref": "bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh",
    "label": "Address with Additional Fields",
    "origin": "wpkh([d34db33f/84'/0'/3'])",
    "keypath": "/1/123",
    "heights": [850000, 850001, 850010],
  };

  final Map<String, dynamic> inputWithAdditionalFields = {
    "type": "input",
    "ref": "a1b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef123456:0",
    "label": "Input with Additional Fields",
    "origin": "wpkh([d34db33f/84'/0'/4'])",
    "keypath": "/0/456",
    "value": 100000,
    "fmv": {"USD": 1233.45, "EUR": 1050.20},
    "height": 850000,
    "time": "2025-01-23T11:40:35Z",
  };

  final Map<String, dynamic> outputWithAdditionalFields = {
    "type": "output",
    "ref": "a1b2c3d4e5f6789012345678901234567890abcdef1234567890abcdef123456:1",
    "label": "Output with Additional Fields",
    "origin": "wpkh([d34db33f/84'/0'/5'])",
    "spendable": true,
    "keypath": "/1/789",
    "value": 75000,
    "fmv": {"USD": 987.65, "EUR": 840.15},
    "height": 850000,
    "time": "2025-01-23T11:40:35Z",
  };

  /// Get all test vectors as a list
  List<Map<String, dynamic>> get all => [
    tx,
    addr,
    pubkey,
    input,
    output,
    xpub,
    tx2,
    txWithAdditionalFields,
    addrWithAdditionalFields,
    inputWithAdditionalFields,
    outputWithAdditionalFields,
  ];

  /// Get test vectors by type
  List<Map<String, dynamic>> getByType(String type) {
    return all.where((vector) => vector['type'] == type).toList();
  }
}
