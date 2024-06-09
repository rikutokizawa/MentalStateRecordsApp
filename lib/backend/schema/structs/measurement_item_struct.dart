// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeasurementItemStruct extends BaseStruct {
  MeasurementItemStruct({
    String? name,
    String? upperName,
    String? bottomName,
    int? step,
    String? details,
    bool? valid,
  })  : _name = name,
        _upperName = upperName,
        _bottomName = bottomName,
        _step = step,
        _details = details,
        _valid = valid;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "UpperName" field.
  String? _upperName;
  String get upperName => _upperName ?? '';
  set upperName(String? val) => _upperName = val;
  bool hasUpperName() => _upperName != null;

  // "BottomName" field.
  String? _bottomName;
  String get bottomName => _bottomName ?? '';
  set bottomName(String? val) => _bottomName = val;
  bool hasBottomName() => _bottomName != null;

  // "Step" field.
  int? _step;
  int get step => _step ?? 0;
  set step(int? val) => _step = val;
  void incrementStep(int amount) => _step = step + amount;
  bool hasStep() => _step != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  set details(String? val) => _details = val;
  bool hasDetails() => _details != null;

  // "valid" field.
  bool? _valid;
  bool get valid => _valid ?? true;
  set valid(bool? val) => _valid = val;
  bool hasValid() => _valid != null;

  static MeasurementItemStruct fromMap(Map<String, dynamic> data) =>
      MeasurementItemStruct(
        name: data['name'] as String?,
        upperName: data['UpperName'] as String?,
        bottomName: data['BottomName'] as String?,
        step: castToType<int>(data['Step']),
        details: data['details'] as String?,
        valid: data['valid'] as bool?,
      );

  static MeasurementItemStruct? maybeFromMap(dynamic data) => data is Map
      ? MeasurementItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'UpperName': _upperName,
        'BottomName': _bottomName,
        'Step': _step,
        'details': _details,
        'valid': _valid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'UpperName': serializeParam(
          _upperName,
          ParamType.String,
        ),
        'BottomName': serializeParam(
          _bottomName,
          ParamType.String,
        ),
        'Step': serializeParam(
          _step,
          ParamType.int,
        ),
        'details': serializeParam(
          _details,
          ParamType.String,
        ),
        'valid': serializeParam(
          _valid,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MeasurementItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      MeasurementItemStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        upperName: deserializeParam(
          data['UpperName'],
          ParamType.String,
          false,
        ),
        bottomName: deserializeParam(
          data['BottomName'],
          ParamType.String,
          false,
        ),
        step: deserializeParam(
          data['Step'],
          ParamType.int,
          false,
        ),
        details: deserializeParam(
          data['details'],
          ParamType.String,
          false,
        ),
        valid: deserializeParam(
          data['valid'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MeasurementItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MeasurementItemStruct &&
        name == other.name &&
        upperName == other.upperName &&
        bottomName == other.bottomName &&
        step == other.step &&
        details == other.details &&
        valid == other.valid;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([name, upperName, bottomName, step, details, valid]);
}

MeasurementItemStruct createMeasurementItemStruct({
  String? name,
  String? upperName,
  String? bottomName,
  int? step,
  String? details,
  bool? valid,
}) =>
    MeasurementItemStruct(
      name: name,
      upperName: upperName,
      bottomName: bottomName,
      step: step,
      details: details,
      valid: valid,
    );
