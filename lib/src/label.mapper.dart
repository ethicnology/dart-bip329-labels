// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'label.dart';

class Bip329LabelMapper extends ClassMapperBase<Bip329Label> {
  Bip329LabelMapper._();

  static Bip329LabelMapper? _instance;
  static Bip329LabelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = Bip329LabelMapper._());
      TxLabelMapper.ensureInitialized();
      AddressLabelMapper.ensureInitialized();
      PubkeyLabelMapper.ensureInitialized();
      InputLabelMapper.ensureInitialized();
      OutputLabelMapper.ensureInitialized();
      XpubLabelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Bip329Label';

  static String _$ref(Bip329Label v) => v.ref;
  static const Field<Bip329Label, String> _f$ref = Field('ref', _$ref);
  static String _$label(Bip329Label v) => v.label;
  static const Field<Bip329Label, String> _f$label = Field('label', _$label);
  static String? _$origin(Bip329Label v) => v.origin;
  static const Field<Bip329Label, String> _f$origin = Field(
    'origin',
    _$origin,
    opt: true,
  );

  @override
  final MappableFields<Bip329Label> fields = const {
    #ref: _f$ref,
    #label: _f$label,
    #origin: _f$origin,
  };

  static Bip329Label _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
      'Bip329Label',
      'type',
      '${data.value['type']}',
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Bip329Label fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Bip329Label>(map);
  }

  static Bip329Label fromJson(String json) {
    return ensureInitialized().decodeJson<Bip329Label>(json);
  }
}

mixin Bip329LabelMappable {
  String toJson();
  Map<String, dynamic> toMap();
  Bip329LabelCopyWith<Bip329Label, Bip329Label, Bip329Label> get copyWith;
}

abstract class Bip329LabelCopyWith<$R, $In extends Bip329Label, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? ref, String? label, String? origin});
  Bip329LabelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class TxLabelMapper extends SubClassMapperBase<TxLabel> {
  TxLabelMapper._();

  static TxLabelMapper? _instance;
  static TxLabelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TxLabelMapper._());
      Bip329LabelMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'TxLabel';

  static String _$ref(TxLabel v) => v.ref;
  static const Field<TxLabel, String> _f$ref = Field('ref', _$ref);
  static String _$label(TxLabel v) => v.label;
  static const Field<TxLabel, String> _f$label = Field('label', _$label);
  static String? _$origin(TxLabel v) => v.origin;
  static const Field<TxLabel, String> _f$origin = Field(
    'origin',
    _$origin,
    opt: true,
  );

  @override
  final MappableFields<TxLabel> fields = const {
    #ref: _f$ref,
    #label: _f$label,
    #origin: _f$origin,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'tx';
  @override
  late final ClassMapperBase superMapper =
      Bip329LabelMapper.ensureInitialized();

  static TxLabel _instantiate(DecodingData data) {
    return TxLabel(
      ref: data.dec(_f$ref),
      label: data.dec(_f$label),
      origin: data.dec(_f$origin),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static TxLabel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TxLabel>(map);
  }

  static TxLabel fromJson(String json) {
    return ensureInitialized().decodeJson<TxLabel>(json);
  }
}

mixin TxLabelMappable {
  String toJson() {
    return TxLabelMapper.ensureInitialized().encodeJson<TxLabel>(
      this as TxLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return TxLabelMapper.ensureInitialized().encodeMap<TxLabel>(
      this as TxLabel,
    );
  }

  TxLabelCopyWith<TxLabel, TxLabel, TxLabel> get copyWith =>
      _TxLabelCopyWithImpl<TxLabel, TxLabel>(
        this as TxLabel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return TxLabelMapper.ensureInitialized().stringifyValue(this as TxLabel);
  }

  @override
  bool operator ==(Object other) {
    return TxLabelMapper.ensureInitialized().equalsValue(
      this as TxLabel,
      other,
    );
  }

  @override
  int get hashCode {
    return TxLabelMapper.ensureInitialized().hashValue(this as TxLabel);
  }
}

extension TxLabelValueCopy<$R, $Out> on ObjectCopyWith<$R, TxLabel, $Out> {
  TxLabelCopyWith<$R, TxLabel, $Out> get $asTxLabel =>
      $base.as((v, t, t2) => _TxLabelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TxLabelCopyWith<$R, $In extends TxLabel, $Out>
    implements Bip329LabelCopyWith<$R, $In, $Out> {
  @override
  $R call({String? ref, String? label, String? origin});
  TxLabelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TxLabelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TxLabel, $Out>
    implements TxLabelCopyWith<$R, TxLabel, $Out> {
  _TxLabelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TxLabel> $mapper =
      TxLabelMapper.ensureInitialized();
  @override
  $R call({String? ref, String? label, Object? origin = $none}) => $apply(
    FieldCopyWithData({
      if (ref != null) #ref: ref,
      if (label != null) #label: label,
      if (origin != $none) #origin: origin,
    }),
  );
  @override
  TxLabel $make(CopyWithData data) => TxLabel(
    ref: data.get(#ref, or: $value.ref),
    label: data.get(#label, or: $value.label),
    origin: data.get(#origin, or: $value.origin),
  );

  @override
  TxLabelCopyWith<$R2, TxLabel, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TxLabelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AddressLabelMapper extends SubClassMapperBase<AddressLabel> {
  AddressLabelMapper._();

  static AddressLabelMapper? _instance;
  static AddressLabelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AddressLabelMapper._());
      Bip329LabelMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'AddressLabel';

  static String _$ref(AddressLabel v) => v.ref;
  static const Field<AddressLabel, String> _f$ref = Field('ref', _$ref);
  static String _$label(AddressLabel v) => v.label;
  static const Field<AddressLabel, String> _f$label = Field('label', _$label);
  static String? _$origin(AddressLabel v) => v.origin;
  static const Field<AddressLabel, String> _f$origin = Field(
    'origin',
    _$origin,
    opt: true,
  );

  @override
  final MappableFields<AddressLabel> fields = const {
    #ref: _f$ref,
    #label: _f$label,
    #origin: _f$origin,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'addr';
  @override
  late final ClassMapperBase superMapper =
      Bip329LabelMapper.ensureInitialized();

  static AddressLabel _instantiate(DecodingData data) {
    return AddressLabel(
      ref: data.dec(_f$ref),
      label: data.dec(_f$label),
      origin: data.dec(_f$origin),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AddressLabel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AddressLabel>(map);
  }

  static AddressLabel fromJson(String json) {
    return ensureInitialized().decodeJson<AddressLabel>(json);
  }
}

mixin AddressLabelMappable {
  String toJson() {
    return AddressLabelMapper.ensureInitialized().encodeJson<AddressLabel>(
      this as AddressLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return AddressLabelMapper.ensureInitialized().encodeMap<AddressLabel>(
      this as AddressLabel,
    );
  }

  AddressLabelCopyWith<AddressLabel, AddressLabel, AddressLabel> get copyWith =>
      _AddressLabelCopyWithImpl<AddressLabel, AddressLabel>(
        this as AddressLabel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AddressLabelMapper.ensureInitialized().stringifyValue(
      this as AddressLabel,
    );
  }

  @override
  bool operator ==(Object other) {
    return AddressLabelMapper.ensureInitialized().equalsValue(
      this as AddressLabel,
      other,
    );
  }

  @override
  int get hashCode {
    return AddressLabelMapper.ensureInitialized().hashValue(
      this as AddressLabel,
    );
  }
}

extension AddressLabelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AddressLabel, $Out> {
  AddressLabelCopyWith<$R, AddressLabel, $Out> get $asAddressLabel =>
      $base.as((v, t, t2) => _AddressLabelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AddressLabelCopyWith<$R, $In extends AddressLabel, $Out>
    implements Bip329LabelCopyWith<$R, $In, $Out> {
  @override
  $R call({String? ref, String? label, String? origin});
  AddressLabelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AddressLabelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AddressLabel, $Out>
    implements AddressLabelCopyWith<$R, AddressLabel, $Out> {
  _AddressLabelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AddressLabel> $mapper =
      AddressLabelMapper.ensureInitialized();
  @override
  $R call({String? ref, String? label, Object? origin = $none}) => $apply(
    FieldCopyWithData({
      if (ref != null) #ref: ref,
      if (label != null) #label: label,
      if (origin != $none) #origin: origin,
    }),
  );
  @override
  AddressLabel $make(CopyWithData data) => AddressLabel(
    ref: data.get(#ref, or: $value.ref),
    label: data.get(#label, or: $value.label),
    origin: data.get(#origin, or: $value.origin),
  );

  @override
  AddressLabelCopyWith<$R2, AddressLabel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AddressLabelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class PubkeyLabelMapper extends SubClassMapperBase<PubkeyLabel> {
  PubkeyLabelMapper._();

  static PubkeyLabelMapper? _instance;
  static PubkeyLabelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PubkeyLabelMapper._());
      Bip329LabelMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PubkeyLabel';

  static String _$ref(PubkeyLabel v) => v.ref;
  static const Field<PubkeyLabel, String> _f$ref = Field('ref', _$ref);
  static String _$label(PubkeyLabel v) => v.label;
  static const Field<PubkeyLabel, String> _f$label = Field('label', _$label);
  static String? _$origin(PubkeyLabel v) => v.origin;
  static const Field<PubkeyLabel, String> _f$origin = Field(
    'origin',
    _$origin,
    opt: true,
  );

  @override
  final MappableFields<PubkeyLabel> fields = const {
    #ref: _f$ref,
    #label: _f$label,
    #origin: _f$origin,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'pubkey';
  @override
  late final ClassMapperBase superMapper =
      Bip329LabelMapper.ensureInitialized();

  static PubkeyLabel _instantiate(DecodingData data) {
    return PubkeyLabel(
      ref: data.dec(_f$ref),
      label: data.dec(_f$label),
      origin: data.dec(_f$origin),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static PubkeyLabel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PubkeyLabel>(map);
  }

  static PubkeyLabel fromJson(String json) {
    return ensureInitialized().decodeJson<PubkeyLabel>(json);
  }
}

mixin PubkeyLabelMappable {
  String toJson() {
    return PubkeyLabelMapper.ensureInitialized().encodeJson<PubkeyLabel>(
      this as PubkeyLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return PubkeyLabelMapper.ensureInitialized().encodeMap<PubkeyLabel>(
      this as PubkeyLabel,
    );
  }

  PubkeyLabelCopyWith<PubkeyLabel, PubkeyLabel, PubkeyLabel> get copyWith =>
      _PubkeyLabelCopyWithImpl<PubkeyLabel, PubkeyLabel>(
        this as PubkeyLabel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PubkeyLabelMapper.ensureInitialized().stringifyValue(
      this as PubkeyLabel,
    );
  }

  @override
  bool operator ==(Object other) {
    return PubkeyLabelMapper.ensureInitialized().equalsValue(
      this as PubkeyLabel,
      other,
    );
  }

  @override
  int get hashCode {
    return PubkeyLabelMapper.ensureInitialized().hashValue(this as PubkeyLabel);
  }
}

extension PubkeyLabelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PubkeyLabel, $Out> {
  PubkeyLabelCopyWith<$R, PubkeyLabel, $Out> get $asPubkeyLabel =>
      $base.as((v, t, t2) => _PubkeyLabelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PubkeyLabelCopyWith<$R, $In extends PubkeyLabel, $Out>
    implements Bip329LabelCopyWith<$R, $In, $Out> {
  @override
  $R call({String? ref, String? label, String? origin});
  PubkeyLabelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PubkeyLabelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PubkeyLabel, $Out>
    implements PubkeyLabelCopyWith<$R, PubkeyLabel, $Out> {
  _PubkeyLabelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PubkeyLabel> $mapper =
      PubkeyLabelMapper.ensureInitialized();
  @override
  $R call({String? ref, String? label, Object? origin = $none}) => $apply(
    FieldCopyWithData({
      if (ref != null) #ref: ref,
      if (label != null) #label: label,
      if (origin != $none) #origin: origin,
    }),
  );
  @override
  PubkeyLabel $make(CopyWithData data) => PubkeyLabel(
    ref: data.get(#ref, or: $value.ref),
    label: data.get(#label, or: $value.label),
    origin: data.get(#origin, or: $value.origin),
  );

  @override
  PubkeyLabelCopyWith<$R2, PubkeyLabel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PubkeyLabelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class InputLabelMapper extends SubClassMapperBase<InputLabel> {
  InputLabelMapper._();

  static InputLabelMapper? _instance;
  static InputLabelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InputLabelMapper._());
      Bip329LabelMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'InputLabel';

  static String _$ref(InputLabel v) => v.ref;
  static const Field<InputLabel, String> _f$ref = Field('ref', _$ref);
  static String _$label(InputLabel v) => v.label;
  static const Field<InputLabel, String> _f$label = Field('label', _$label);
  static String? _$origin(InputLabel v) => v.origin;
  static const Field<InputLabel, String> _f$origin = Field(
    'origin',
    _$origin,
    opt: true,
  );

  @override
  final MappableFields<InputLabel> fields = const {
    #ref: _f$ref,
    #label: _f$label,
    #origin: _f$origin,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'input';
  @override
  late final ClassMapperBase superMapper =
      Bip329LabelMapper.ensureInitialized();

  static InputLabel _instantiate(DecodingData data) {
    return InputLabel(
      ref: data.dec(_f$ref),
      label: data.dec(_f$label),
      origin: data.dec(_f$origin),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static InputLabel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InputLabel>(map);
  }

  static InputLabel fromJson(String json) {
    return ensureInitialized().decodeJson<InputLabel>(json);
  }
}

mixin InputLabelMappable {
  String toJson() {
    return InputLabelMapper.ensureInitialized().encodeJson<InputLabel>(
      this as InputLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return InputLabelMapper.ensureInitialized().encodeMap<InputLabel>(
      this as InputLabel,
    );
  }

  InputLabelCopyWith<InputLabel, InputLabel, InputLabel> get copyWith =>
      _InputLabelCopyWithImpl<InputLabel, InputLabel>(
        this as InputLabel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return InputLabelMapper.ensureInitialized().stringifyValue(
      this as InputLabel,
    );
  }

  @override
  bool operator ==(Object other) {
    return InputLabelMapper.ensureInitialized().equalsValue(
      this as InputLabel,
      other,
    );
  }

  @override
  int get hashCode {
    return InputLabelMapper.ensureInitialized().hashValue(this as InputLabel);
  }
}

extension InputLabelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InputLabel, $Out> {
  InputLabelCopyWith<$R, InputLabel, $Out> get $asInputLabel =>
      $base.as((v, t, t2) => _InputLabelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class InputLabelCopyWith<$R, $In extends InputLabel, $Out>
    implements Bip329LabelCopyWith<$R, $In, $Out> {
  @override
  $R call({String? ref, String? label, String? origin});
  InputLabelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _InputLabelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InputLabel, $Out>
    implements InputLabelCopyWith<$R, InputLabel, $Out> {
  _InputLabelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InputLabel> $mapper =
      InputLabelMapper.ensureInitialized();
  @override
  $R call({String? ref, String? label, Object? origin = $none}) => $apply(
    FieldCopyWithData({
      if (ref != null) #ref: ref,
      if (label != null) #label: label,
      if (origin != $none) #origin: origin,
    }),
  );
  @override
  InputLabel $make(CopyWithData data) => InputLabel(
    ref: data.get(#ref, or: $value.ref),
    label: data.get(#label, or: $value.label),
    origin: data.get(#origin, or: $value.origin),
  );

  @override
  InputLabelCopyWith<$R2, InputLabel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _InputLabelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OutputLabelMapper extends SubClassMapperBase<OutputLabel> {
  OutputLabelMapper._();

  static OutputLabelMapper? _instance;
  static OutputLabelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OutputLabelMapper._());
      Bip329LabelMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'OutputLabel';

  static String _$ref(OutputLabel v) => v.ref;
  static const Field<OutputLabel, String> _f$ref = Field('ref', _$ref);
  static String _$label(OutputLabel v) => v.label;
  static const Field<OutputLabel, String> _f$label = Field('label', _$label);
  static String? _$origin(OutputLabel v) => v.origin;
  static const Field<OutputLabel, String> _f$origin = Field(
    'origin',
    _$origin,
    opt: true,
  );
  static bool _$spendable(OutputLabel v) => v.spendable;
  static const Field<OutputLabel, bool> _f$spendable = Field(
    'spendable',
    _$spendable,
  );

  @override
  final MappableFields<OutputLabel> fields = const {
    #ref: _f$ref,
    #label: _f$label,
    #origin: _f$origin,
    #spendable: _f$spendable,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'output';
  @override
  late final ClassMapperBase superMapper =
      Bip329LabelMapper.ensureInitialized();

  static OutputLabel _instantiate(DecodingData data) {
    return OutputLabel(
      ref: data.dec(_f$ref),
      label: data.dec(_f$label),
      origin: data.dec(_f$origin),
      spendable: data.dec(_f$spendable),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static OutputLabel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OutputLabel>(map);
  }

  static OutputLabel fromJson(String json) {
    return ensureInitialized().decodeJson<OutputLabel>(json);
  }
}

mixin OutputLabelMappable {
  String toJson() {
    return OutputLabelMapper.ensureInitialized().encodeJson<OutputLabel>(
      this as OutputLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return OutputLabelMapper.ensureInitialized().encodeMap<OutputLabel>(
      this as OutputLabel,
    );
  }

  OutputLabelCopyWith<OutputLabel, OutputLabel, OutputLabel> get copyWith =>
      _OutputLabelCopyWithImpl<OutputLabel, OutputLabel>(
        this as OutputLabel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return OutputLabelMapper.ensureInitialized().stringifyValue(
      this as OutputLabel,
    );
  }

  @override
  bool operator ==(Object other) {
    return OutputLabelMapper.ensureInitialized().equalsValue(
      this as OutputLabel,
      other,
    );
  }

  @override
  int get hashCode {
    return OutputLabelMapper.ensureInitialized().hashValue(this as OutputLabel);
  }
}

extension OutputLabelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OutputLabel, $Out> {
  OutputLabelCopyWith<$R, OutputLabel, $Out> get $asOutputLabel =>
      $base.as((v, t, t2) => _OutputLabelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OutputLabelCopyWith<$R, $In extends OutputLabel, $Out>
    implements Bip329LabelCopyWith<$R, $In, $Out> {
  @override
  $R call({String? ref, String? label, String? origin, bool? spendable});
  OutputLabelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OutputLabelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OutputLabel, $Out>
    implements OutputLabelCopyWith<$R, OutputLabel, $Out> {
  _OutputLabelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OutputLabel> $mapper =
      OutputLabelMapper.ensureInitialized();
  @override
  $R call({
    String? ref,
    String? label,
    Object? origin = $none,
    bool? spendable,
  }) => $apply(
    FieldCopyWithData({
      if (ref != null) #ref: ref,
      if (label != null) #label: label,
      if (origin != $none) #origin: origin,
      if (spendable != null) #spendable: spendable,
    }),
  );
  @override
  OutputLabel $make(CopyWithData data) => OutputLabel(
    ref: data.get(#ref, or: $value.ref),
    label: data.get(#label, or: $value.label),
    origin: data.get(#origin, or: $value.origin),
    spendable: data.get(#spendable, or: $value.spendable),
  );

  @override
  OutputLabelCopyWith<$R2, OutputLabel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _OutputLabelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class XpubLabelMapper extends SubClassMapperBase<XpubLabel> {
  XpubLabelMapper._();

  static XpubLabelMapper? _instance;
  static XpubLabelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = XpubLabelMapper._());
      Bip329LabelMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'XpubLabel';

  static String _$ref(XpubLabel v) => v.ref;
  static const Field<XpubLabel, String> _f$ref = Field('ref', _$ref);
  static String _$label(XpubLabel v) => v.label;
  static const Field<XpubLabel, String> _f$label = Field('label', _$label);
  static String? _$origin(XpubLabel v) => v.origin;
  static const Field<XpubLabel, String> _f$origin = Field(
    'origin',
    _$origin,
    opt: true,
  );

  @override
  final MappableFields<XpubLabel> fields = const {
    #ref: _f$ref,
    #label: _f$label,
    #origin: _f$origin,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'xpub';
  @override
  late final ClassMapperBase superMapper =
      Bip329LabelMapper.ensureInitialized();

  static XpubLabel _instantiate(DecodingData data) {
    return XpubLabel(
      ref: data.dec(_f$ref),
      label: data.dec(_f$label),
      origin: data.dec(_f$origin),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static XpubLabel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<XpubLabel>(map);
  }

  static XpubLabel fromJson(String json) {
    return ensureInitialized().decodeJson<XpubLabel>(json);
  }
}

mixin XpubLabelMappable {
  String toJson() {
    return XpubLabelMapper.ensureInitialized().encodeJson<XpubLabel>(
      this as XpubLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return XpubLabelMapper.ensureInitialized().encodeMap<XpubLabel>(
      this as XpubLabel,
    );
  }

  XpubLabelCopyWith<XpubLabel, XpubLabel, XpubLabel> get copyWith =>
      _XpubLabelCopyWithImpl<XpubLabel, XpubLabel>(
        this as XpubLabel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return XpubLabelMapper.ensureInitialized().stringifyValue(
      this as XpubLabel,
    );
  }

  @override
  bool operator ==(Object other) {
    return XpubLabelMapper.ensureInitialized().equalsValue(
      this as XpubLabel,
      other,
    );
  }

  @override
  int get hashCode {
    return XpubLabelMapper.ensureInitialized().hashValue(this as XpubLabel);
  }
}

extension XpubLabelValueCopy<$R, $Out> on ObjectCopyWith<$R, XpubLabel, $Out> {
  XpubLabelCopyWith<$R, XpubLabel, $Out> get $asXpubLabel =>
      $base.as((v, t, t2) => _XpubLabelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class XpubLabelCopyWith<$R, $In extends XpubLabel, $Out>
    implements Bip329LabelCopyWith<$R, $In, $Out> {
  @override
  $R call({String? ref, String? label, String? origin});
  XpubLabelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _XpubLabelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, XpubLabel, $Out>
    implements XpubLabelCopyWith<$R, XpubLabel, $Out> {
  _XpubLabelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<XpubLabel> $mapper =
      XpubLabelMapper.ensureInitialized();
  @override
  $R call({String? ref, String? label, Object? origin = $none}) => $apply(
    FieldCopyWithData({
      if (ref != null) #ref: ref,
      if (label != null) #label: label,
      if (origin != $none) #origin: origin,
    }),
  );
  @override
  XpubLabel $make(CopyWithData data) => XpubLabel(
    ref: data.get(#ref, or: $value.ref),
    label: data.get(#label, or: $value.label),
    origin: data.get(#origin, or: $value.origin),
  );

  @override
  XpubLabelCopyWith<$R2, XpubLabel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _XpubLabelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

