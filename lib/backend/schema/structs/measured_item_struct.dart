// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeasuredItemStruct extends BaseStruct {
  MeasuredItemStruct({
    int? passedtime,
    double? result,
    String? typename,
  })  : _passedtime = passedtime,
        _result = result,
        _typename = typename;

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

  // "typename" field.
  String? _typename;
  String get typename => _typename ?? '';
  set typename(String? val) => _typename = val;
  bool hasTypename() => _typename != null;

  static MeasuredItemStruct fromMap(Map<String, dynamic> data) =>
      MeasuredItemStruct(
        passedtime: castToType<int>(data['passedtime']),
        result: castToType<double>(data['result']),
        typename: data['typename'] as String?,
      );

  static MeasuredItemStruct? maybeFromMap(dynamic data) => data is Map
      ? MeasuredItemStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'passedtime': _passedtime,
        'result': _result,
        'typename': _typename,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'passedtime': serializeParam(
          _passedtime,
          ParamType.int,
        ),
        'result': serializeParam(
          _result,
          ParamType.double,
        ),
        'typename': serializeParam(
          _typename,
          ParamType.String,
        ),
      }.withoutNulls;

  static MeasuredItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      MeasuredItemStruct(
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
        typename: deserializeParam(
          data['typename'],
          ParamType.String,
          false,
        ),
      );

  // toJsonメソッドを追加
  Map<String, dynamic> toJson() {
    return {
      'passedtime': passedtime,
      'result': result,
      'typename': typename,
    };
  }

  @override
  String toString() => 'MeasuredItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MeasuredItemStruct &&
        passedtime == other.passedtime &&
        result == other.result &&
        typename == other.typename;
  }

  @override
  int get hashCode => const ListEquality().hash([passedtime, result, typename]);
}

MeasuredItemStruct createMeasuredItemStruct({
  int? passedtime,
  double? result,
  String? typename,
}) =>
    MeasuredItemStruct(
      passedtime: passedtime,
      result: result,
      typename: typename,
    );
