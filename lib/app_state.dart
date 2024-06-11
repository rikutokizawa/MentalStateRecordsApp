// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Subjects = prefs
              .getStringList('ff_Subjects')
              ?.map((x) {
                try {
                  return SubjectStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Subjects;
    });
    _safeInit(() {
      _MeasurementItems = prefs
              .getStringList('ff_MeasurementItems')
              ?.map((x) {
                try {
                  return MeasurementItemStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _MeasurementItems;
    });
    _safeInit(() {
      _AllResults = prefs
              .getStringList('ff_AllResults')
              ?.map((x) {
                try {
                  return MeasuredResultStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _AllResults;
    });
    _safeInit(() {
      _ExperimentTime = prefs
              .getStringList('ff_ExperimentTime')
              ?.map((x) {
                try {
                  return TimeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ExperimentTime;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<SubjectStruct> _Subjects = [];
  List<SubjectStruct> get Subjects => _Subjects;
  set Subjects(List<SubjectStruct> value) {
    _Subjects = value;
    prefs.setStringList(
        'ff_Subjects', value.map((x) => x.serialize()).toList());
  }

  void addToSubjects(SubjectStruct value) {
    _Subjects.add(value);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  void removeFromSubjects(SubjectStruct value) {
    _Subjects.remove(value);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSubjects(int index) {
    _Subjects.removeAt(index);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  void updateSubjectsAtIndex(
    int index,
    SubjectStruct Function(SubjectStruct) updateFn,
  ) {
    _Subjects[index] = updateFn(_Subjects[index]);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSubjects(int index, SubjectStruct value) {
    _Subjects.insert(index, value);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  List<MeasurementItemStruct> _MeasurementItems = [];
  List<MeasurementItemStruct> get MeasurementItems => _MeasurementItems;
  set MeasurementItems(List<MeasurementItemStruct> value) {
    _MeasurementItems = value;
    prefs.setStringList(
        'ff_MeasurementItems', value.map((x) => x.serialize()).toList());
  }

  void addToMeasurementItems(MeasurementItemStruct value) {
    _MeasurementItems.add(value);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  void removeFromMeasurementItems(MeasurementItemStruct value) {
    _MeasurementItems.remove(value);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMeasurementItems(int index) {
    _MeasurementItems.removeAt(index);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  void updateMeasurementItemsAtIndex(
    int index,
    MeasurementItemStruct Function(MeasurementItemStruct) updateFn,
  ) {
    _MeasurementItems[index] = updateFn(_MeasurementItems[index]);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMeasurementItems(int index, MeasurementItemStruct value) {
    _MeasurementItems.insert(index, value);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  List<MeasuredResultStruct> _AllResults = [];
  List<MeasuredResultStruct> get AllResults => _AllResults;
  set AllResults(List<MeasuredResultStruct> value) {
    _AllResults = value;
    prefs.setStringList(
        'ff_AllResults', value.map((x) => x.serialize()).toList());
  }

  void addToAllResults(MeasuredResultStruct value) {
    _AllResults.add(value);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  void removeFromAllResults(MeasuredResultStruct value) {
    _AllResults.remove(value);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAllResults(int index) {
    _AllResults.removeAt(index);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  void updateAllResultsAtIndex(
    int index,
    MeasuredResultStruct Function(MeasuredResultStruct) updateFn,
  ) {
    _AllResults[index] = updateFn(_AllResults[index]);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAllResults(int index, MeasuredResultStruct value) {
    _AllResults.insert(index, value);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  List<TimeStruct> _ExperimentTime = [];
  List<TimeStruct> get ExperimentTime => _ExperimentTime;
  set ExperimentTime(List<TimeStruct> value) {
    _ExperimentTime = value;
    prefs.setStringList(
        'ff_ExperimentTime', value.map((x) => x.serialize()).toList());
  }

  void addToExperimentTime(TimeStruct value) {
    _ExperimentTime.add(value);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  void removeFromExperimentTime(TimeStruct value) {
    _ExperimentTime.remove(value);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromExperimentTime(int index) {
    _ExperimentTime.removeAt(index);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  void updateExperimentTimeAtIndex(
    int index,
    TimeStruct Function(TimeStruct) updateFn,
  ) {
    _ExperimentTime[index] = updateFn(_ExperimentTime[index]);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInExperimentTime(int index, TimeStruct value) {
    _ExperimentTime.insert(index, value);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  MeasuredResultStruct _TemporaryRecord = MeasuredResultStruct();
  MeasuredResultStruct get TemporaryRecord => _TemporaryRecord;
  set TemporaryRecord(MeasuredResultStruct value) {
    _TemporaryRecord = value;
  }

  void updateTemporaryRecordStruct(Function(MeasuredResultStruct) updateFn) {
    updateFn(_TemporaryRecord);
  }

  List<MeasuredItemStruct> _TemporaryResult = [];
  List<MeasuredItemStruct> get TemporaryResult => _TemporaryResult;
  set TemporaryResult(List<MeasuredItemStruct> value) {
    _TemporaryResult = value;
  }

  void addToTemporaryResult(MeasuredItemStruct value) {
    _TemporaryResult.add(value);
  }

  void removeFromTemporaryResult(MeasuredItemStruct value) {
    _TemporaryResult.remove(value);
  }

  void removeAtIndexFromTemporaryResult(int index) {
    _TemporaryResult.removeAt(index);
  }

  void updateTemporaryResultAtIndex(
    int index,
    MeasuredItemStruct Function(MeasuredItemStruct) updateFn,
  ) {
    _TemporaryResult[index] = updateFn(_TemporaryResult[index]);
  }

  void insertAtIndexInTemporaryResult(int index, MeasuredItemStruct value) {
    _TemporaryResult.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
