// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeasuredResultStruct extends BaseStruct {
  MeasuredResultStruct({
    DateTime? date,
    List<MeasuredItemStruct>? results,
    String? title,
    TimeStruct? time,
    SubjectStruct? subject,
    List<MeasurementItemStruct>? items,
  })  : _date = date,
        _results = results,
        _title = title,
        _time = time,
        _subject = subject,
        _items = items;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "results" field.
  List<MeasuredItemStruct>? _results;
  List<MeasuredItemStruct> get results => _results ?? const [];
  set results(List<MeasuredItemStruct>? val) => _results = val;
  void updateResults(Function(List<MeasuredItemStruct>) updateFn) =>
      updateFn(_results ??= []);
  bool hasResults() => _results != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "time" field.
  TimeStruct? _time;
  TimeStruct get time => _time ?? TimeStruct();
  set time(TimeStruct? val) => _time = val;
  void updateTime(Function(TimeStruct) updateFn) =>
      updateFn(_time ??= TimeStruct());
  bool hasTime() => _time != null;

  // "subject" field.
  SubjectStruct? _subject;
  SubjectStruct get subject => _subject ?? SubjectStruct();
  set subject(SubjectStruct? val) => _subject = val;
  void updateSubject(Function(SubjectStruct) updateFn) =>
      updateFn(_subject ??= SubjectStruct());
  bool hasSubject() => _subject != null;

  // "items" field.
  List<MeasurementItemStruct>? _items;
  List<MeasurementItemStruct> get items => _items ?? const [];
  set items(List<MeasurementItemStruct>? val) => _items = val;
  void updateItems(Function(List<MeasurementItemStruct>) updateFn) =>
      updateFn(_items ??= []);
  bool hasItems() => _items != null;

  static MeasuredResultStruct fromMap(Map<String, dynamic> data) =>
      MeasuredResultStruct(
        date: data['date'] as DateTime?,
        results: getStructList(
          data['results'],
          MeasuredItemStruct.fromMap,
        ),
        title: data['title'] as String?,
        time: TimeStruct.maybeFromMap(data['time']),
        subject: SubjectStruct.maybeFromMap(data['subject']),
        items: getStructList(
          data['items'],
          MeasurementItemStruct.fromMap,
        ),
      );

  static MeasuredResultStruct? maybeFromMap(dynamic data) => data is Map
      ? MeasuredResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'results': _results?.map((e) => e.toMap()).toList(),
        'title': _title,
        'time': _time?.toMap(),
        'subject': _subject?.toMap(),
        'items': _items?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'results': serializeParam(
          _results,
          ParamType.DataStruct,
          true,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'time': serializeParam(
          _time,
          ParamType.DataStruct,
        ),
        'subject': serializeParam(
          _subject,
          ParamType.DataStruct,
        ),
        'items': serializeParam(
          _items,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static MeasuredResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      MeasuredResultStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        results: deserializeStructParam<MeasuredItemStruct>(
          data['results'],
          ParamType.DataStruct,
          true,
          structBuilder: MeasuredItemStruct.fromSerializableMap,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        time: deserializeStructParam(
          data['time'],
          ParamType.DataStruct,
          false,
          structBuilder: TimeStruct.fromSerializableMap,
        ),
        subject: deserializeStructParam(
          data['subject'],
          ParamType.DataStruct,
          false,
          structBuilder: SubjectStruct.fromSerializableMap,
        ),
        items: deserializeStructParam<MeasurementItemStruct>(
          data['items'],
          ParamType.DataStruct,
          true,
          structBuilder: MeasurementItemStruct.fromSerializableMap,
        ),
      );

  // toJsonメソッドを追加
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'date': date?.toIso8601String(),
      'time': time.toJson(),
      'subject': subject.toJson(),
      'items': items.map((e) => e.toJson()).toList(),
      'results': results.map((e) => e.toJson()).toList(),
    };
  }

  @override
  String toString() => 'MeasuredResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MeasuredResultStruct &&
        date == other.date &&
        listEquality.equals(results, other.results) &&
        title == other.title &&
        time == other.time &&
        subject == other.subject &&
        listEquality.equals(items, other.items);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([date, results, title, time, subject, items]);
}

MeasuredResultStruct createMeasuredResultStruct({
  DateTime? date,
  String? title,
  TimeStruct? time,
  SubjectStruct? subject,
}) =>
    MeasuredResultStruct(
      date: date,
      title: title,
      time: time ?? TimeStruct(),
      subject: subject ?? SubjectStruct(),
    );
