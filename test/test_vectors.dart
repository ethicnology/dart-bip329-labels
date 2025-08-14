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

  /// Get all test vectors as a list
  List<Map<String, dynamic>> get all => [
    tx,
    addr,
    pubkey,
    input,
    output,
    xpub,
    tx2,
  ];

  /// Get test vectors by type
  List<Map<String, dynamic>> getByType(String type) {
    return all.where((vector) => vector['type'] == type).toList();
  }
}
