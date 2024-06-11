// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/material.dart';

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeStruct extends BaseStruct {
  TimeStruct({
    String? title,
    int? measurementNumber,
    int? experimentTime,
    int? interval,
  })  : _title = title,
        _measurementNumber = measurementNumber,
        _experimentTime = experimentTime,
        _interval = interval;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "MeasurementNumber" field.
  int? _measurementNumber;
  int get measurementNumber => _measurementNumber ?? 0;
  set measurementNumber(int? val) => _measurementNumber = val;
  void incrementMeasurementNumber(int amount) =>
      _measurementNumber = measurementNumber + amount;
  bool hasMeasurementNumber() => _measurementNumber != null;

  // "ExperimentTime" field.
  int? _experimentTime;
  int get experimentTime => _experimentTime ?? 0;
  set experimentTime(int? val) => _experimentTime = val;
  void incrementExperimentTime(int amount) =>
      _experimentTime = experimentTime + amount;
  bool hasExperimentTime() => _experimentTime != null;

  // "Interval" field.
  int? _interval;
  int get interval => _interval ?? 0;
  set interval(int? val) => _interval = val;
  void incrementInterval(int amount) => _interval = interval + amount;
  bool hasInterval() => _interval != null;

  static TimeStruct fromMap(Map<String, dynamic> data) => TimeStruct(
        title: data['title'] as String?,
        measurementNumber: castToType<int>(data['MeasurementNumber']),
        experimentTime: castToType<int>(data['ExperimentTime']),
        interval: castToType<int>(data['Interval']),
      );

  static TimeStruct? maybeFromMap(dynamic data) =>
      data is Map ? TimeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'MeasurementNumber': _measurementNumber,
        'ExperimentTime': _experimentTime,
        'Interval': _interval,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'MeasurementNumber': serializeParam(
          _measurementNumber,
          ParamType.int,
        ),
        'ExperimentTime': serializeParam(
          _experimentTime,
          ParamType.int,
        ),
        'Interval': serializeParam(
          _interval,
          ParamType.int,
        ),
      }.withoutNulls;

  static TimeStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimeStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        measurementNumber: deserializeParam(
          data['MeasurementNumber'],
          ParamType.int,
          false,
        ),
        experimentTime: deserializeParam(
          data['ExperimentTime'],
          ParamType.int,
          false,
        ),
        interval: deserializeParam(
          data['Interval'],
          ParamType.int,
          false,
        ),
      );

  // toJsonメソッドを追加
  Map<String, dynamic> toJson() {
    return {
      'experimentTime': experimentTime,
      'interval': interval,
      'measurementNumber': measurementNumber,
      'title': title,
    };
  }

  @override
  String toString() => 'TimeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimeStruct &&
        title == other.title &&
        measurementNumber == other.measurementNumber &&
        experimentTime == other.experimentTime &&
        interval == other.interval;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, measurementNumber, experimentTime, interval]);
}

TimeStruct createTimeStruct({
  String? title,
  int? measurementNumber,
  int? experimentTime,
  int? interval,
}) =>
    TimeStruct(
      title: title,
      measurementNumber: measurementNumber,
      experimentTime: experimentTime,
      interval: interval,
    );
