// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubjectStruct extends BaseStruct {
  SubjectStruct({
    String? name,
    bool? sex,
    DateTime? birthbay,
  })  : _name = name,
        _sex = sex,
        _birthbay = birthbay;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "sex" field.
  bool? _sex;
  bool get sex => _sex ?? false;
  set sex(bool? val) => _sex = val;
  bool hasSex() => _sex != null;

  // "birthbay" field.
  DateTime? _birthbay;
  DateTime? get birthbay => _birthbay;
  set birthbay(DateTime? val) => _birthbay = val;
  bool hasBirthbay() => _birthbay != null;

  static SubjectStruct fromMap(Map<String, dynamic> data) => SubjectStruct(
        name: data['name'] as String?,
        sex: data['sex'] as bool?,
        birthbay: data['birthbay'] as DateTime?,
      );

  static SubjectStruct? maybeFromMap(dynamic data) =>
      data is Map ? SubjectStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'sex': _sex,
        'birthbay': _birthbay,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'sex': serializeParam(
          _sex,
          ParamType.bool,
        ),
        'birthbay': serializeParam(
          _birthbay,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static SubjectStruct fromSerializableMap(Map<String, dynamic> data) =>
      SubjectStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        sex: deserializeParam(
          data['sex'],
          ParamType.bool,
          false,
        ),
        birthbay: deserializeParam(
          data['birthbay'],
          ParamType.DateTime,
          false,
        ),
      );

  // toJsonメソッドを追加
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'sex': sex,
      'birthday': birthbay?.toIso8601String(),
    };
  }

  @override
  String toString() => 'SubjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SubjectStruct &&
        name == other.name &&
        sex == other.sex &&
        birthbay == other.birthbay;
  }

  @override
  int get hashCode => const ListEquality().hash([name, sex, birthbay]);
}

SubjectStruct createSubjectStruct({
  String? name,
  bool? sex,
  DateTime? birthbay,
}) =>
    SubjectStruct(
      name: name,
      sex: sex,
      birthbay: birthbay,
    );
