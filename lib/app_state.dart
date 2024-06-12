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
    _safeInit(() {
      _HighScore = prefs.getInt('ff_HighScore') ?? _HighScore;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<SubjectStruct> _Subjects = [];
  List<SubjectStruct> get Subjects => _Subjects;
  set Subjects(List<SubjectStruct> _value) {
    _Subjects = _value;
    prefs.setStringList(
        'ff_Subjects', _value.map((x) => x.serialize()).toList());
  }

  void addToSubjects(SubjectStruct _value) {
    _Subjects.add(_value);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  void removeFromSubjects(SubjectStruct _value) {
    _Subjects.remove(_value);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSubjects(int _index) {
    _Subjects.removeAt(_index);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  void updateSubjectsAtIndex(
    int _index,
    SubjectStruct Function(SubjectStruct) updateFn,
  ) {
    _Subjects[_index] = updateFn(_Subjects[_index]);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSubjects(int _index, SubjectStruct _value) {
    _Subjects.insert(_index, _value);
    prefs.setStringList(
        'ff_Subjects', _Subjects.map((x) => x.serialize()).toList());
  }

  List<MeasurementItemStruct> _MeasurementItems = [];
  List<MeasurementItemStruct> get MeasurementItems => _MeasurementItems;
  set MeasurementItems(List<MeasurementItemStruct> _value) {
    _MeasurementItems = _value;
    prefs.setStringList(
        'ff_MeasurementItems', _value.map((x) => x.serialize()).toList());
  }

  void addToMeasurementItems(MeasurementItemStruct _value) {
    _MeasurementItems.add(_value);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  void removeFromMeasurementItems(MeasurementItemStruct _value) {
    _MeasurementItems.remove(_value);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMeasurementItems(int _index) {
    _MeasurementItems.removeAt(_index);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  void updateMeasurementItemsAtIndex(
    int _index,
    MeasurementItemStruct Function(MeasurementItemStruct) updateFn,
  ) {
    _MeasurementItems[_index] = updateFn(_MeasurementItems[_index]);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMeasurementItems(
      int _index, MeasurementItemStruct _value) {
    _MeasurementItems.insert(_index, _value);
    prefs.setStringList('ff_MeasurementItems',
        _MeasurementItems.map((x) => x.serialize()).toList());
  }

  List<MeasuredResultStruct> _AllResults = [];
  List<MeasuredResultStruct> get AllResults => _AllResults;
  set AllResults(List<MeasuredResultStruct> _value) {
    _AllResults = _value;
    prefs.setStringList(
        'ff_AllResults', _value.map((x) => x.serialize()).toList());
  }

  void addToAllResults(MeasuredResultStruct _value) {
    _AllResults.add(_value);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  void removeFromAllResults(MeasuredResultStruct _value) {
    _AllResults.remove(_value);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAllResults(int _index) {
    _AllResults.removeAt(_index);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  void updateAllResultsAtIndex(
    int _index,
    MeasuredResultStruct Function(MeasuredResultStruct) updateFn,
  ) {
    _AllResults[_index] = updateFn(_AllResults[_index]);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAllResults(int _index, MeasuredResultStruct _value) {
    _AllResults.insert(_index, _value);
    prefs.setStringList(
        'ff_AllResults', _AllResults.map((x) => x.serialize()).toList());
  }

  List<TimeStruct> _ExperimentTime = [];
  List<TimeStruct> get ExperimentTime => _ExperimentTime;
  set ExperimentTime(List<TimeStruct> _value) {
    _ExperimentTime = _value;
    prefs.setStringList(
        'ff_ExperimentTime', _value.map((x) => x.serialize()).toList());
  }

  void addToExperimentTime(TimeStruct _value) {
    _ExperimentTime.add(_value);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  void removeFromExperimentTime(TimeStruct _value) {
    _ExperimentTime.remove(_value);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromExperimentTime(int _index) {
    _ExperimentTime.removeAt(_index);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  void updateExperimentTimeAtIndex(
    int _index,
    TimeStruct Function(TimeStruct) updateFn,
  ) {
    _ExperimentTime[_index] = updateFn(_ExperimentTime[_index]);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInExperimentTime(int _index, TimeStruct _value) {
    _ExperimentTime.insert(_index, _value);
    prefs.setStringList('ff_ExperimentTime',
        _ExperimentTime.map((x) => x.serialize()).toList());
  }

  MeasuredResultStruct _TemporaryRecord = MeasuredResultStruct();
  MeasuredResultStruct get TemporaryRecord => _TemporaryRecord;
  set TemporaryRecord(MeasuredResultStruct _value) {
    _TemporaryRecord = _value;
  }

  void updateTemporaryRecordStruct(Function(MeasuredResultStruct) updateFn) {
    updateFn(_TemporaryRecord);
  }

  List<MeasuredItemStruct> _TemporaryResult = [];
  List<MeasuredItemStruct> get TemporaryResult => _TemporaryResult;
  set TemporaryResult(List<MeasuredItemStruct> _value) {
    _TemporaryResult = _value;
  }

  void addToTemporaryResult(MeasuredItemStruct _value) {
    _TemporaryResult.add(_value);
  }

  void removeFromTemporaryResult(MeasuredItemStruct _value) {
    _TemporaryResult.remove(_value);
  }

  void removeAtIndexFromTemporaryResult(int _index) {
    _TemporaryResult.removeAt(_index);
  }

  void updateTemporaryResultAtIndex(
    int _index,
    MeasuredItemStruct Function(MeasuredItemStruct) updateFn,
  ) {
    _TemporaryResult[_index] = updateFn(_TemporaryResult[_index]);
  }

  void insertAtIndexInTemporaryResult(int _index, MeasuredItemStruct _value) {
    _TemporaryResult.insert(_index, _value);
  }

  int _HighScore = 0;
  int get HighScore => _HighScore;
  set HighScore(int _value) {
    _HighScore = _value;
    prefs.setInt('ff_HighScore', _value);
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
