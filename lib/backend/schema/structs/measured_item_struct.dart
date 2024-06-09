// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeasuredItemStruct extends BaseStruct {
  MeasuredItemStruct({
    MeasurementItemStruct? type,
    int? passedtime,
    double? result,
  })  : _type = type,
        _passedtime = passedtime,
        _result = result;

  // "type" field.
  MeasurementItemStruct? _type;
  MeasurementItemStruct get type => _type ?? MeasurementItemStruct();
  set type(MeasurementItemStruct? val) => _type = val;
  void updateType(Function(MeasurementItemStruct) updateFn) =>
      updateFn(_type ??= MeasurementItemStruct());
  bool hasType() => _type != null;

  // "passedtime" field.
  int? _passedtime;
  int get passedtime => _passedtime ?? 0;
  set passedtime(int? val) => _passedtime = val;
  void incrementPassedtime(int amount) => _passedtime = passedtime + amount;
  bool hasPassedtime() => _passedtime != null;

  // "result" field.
  double? _result;
  double get result => _result ?? 0.0;
  set result(double? val) => _result = val;
  void incrementResult(double amount) => _result = result + amount;
  bool hasResult() => _result != null;

  static MeasuredItemStruct fromMap(Map<String, dynamic> data) =>
      MeasuredItemStruct(
        type: MeasurementItemStruct.maybeFromMap(data['type']),
        passedtime: castToType<int>(data['passedtime']),
        result: castToType<double>(data['result']),
      );

  static MeasuredItemStruct? maybeFromMap(dynamic data) => data is Map
      ? MeasuredItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type?.toMap(),
        'passedtime': _passedtime,
        'result': _result,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.DataStruct,
        ),
        'passedtime': serializeParam(
          _passedtime,
          ParamType.int,
        ),
        'result': serializeParam(
          _result,
          ParamType.double,
        ),
      }.withoutNulls;

  static MeasuredItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      MeasuredItemStruct(
        type: deserializeStructParam(
          data['type'],
          ParamType.DataStruct,
          false,
          structBuilder: MeasurementItemStruct.fromSerializableMap,
        ),
        passedtime: deserializeParam(
          data['passedtime'],
          ParamType.int,
          false,
        ),
        result: deserializeParam(
          data['result'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MeasuredItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MeasuredItemStruct &&
        type == other.type &&
        passedtime == other.passedtime &&
        result == other.result;
  }

  @override
  int get hashCode => const ListEquality().hash([type, passedtime, result]);
}

MeasuredItemStruct createMeasuredItemStruct({
  MeasurementItemStruct? type,
  int? passedtime,
  double? result,
}) =>
    MeasuredItemStruct(
      type: type ?? MeasurementItemStruct(),
      passedtime: passedtime,
      result: result,
    );
