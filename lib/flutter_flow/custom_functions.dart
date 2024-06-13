import 'dart:convert';
import 'package:csv/csv.dart';

// ----------------測定回数計算用の関数----------------
List<int>? howmanymeasure(
  int alltime,
  int interval,
) {
  // 測定回数を計算（小数点以下切り捨て）
  int measurementCount = (alltime / interval).floor();

  // 測定時刻を格納するリスト
  List<int> measurementTimes = [];

  // 測定回数分だけインターバルを足してリストに追加
  for (int i = 0; i <= measurementCount; i++) {
    measurementTimes.add(0 + i * interval);
  }

  return measurementTimes;
}

// ----------------CSV出力用の関数----------------

Future<String> convertJsonToCsv(String jsonString) async {
  // JSONファイルを読み込む
  Map<String, dynamic> jsonData = await jsonDecode(jsonString);

  // JSONデータをCSV形式に変換する
  List<List<dynamic>> csvData = [];

  // ヘッダーを追加
  csvData.add([
    'title',
    'date',
    'experimentTime',
    'interval',
    'measurementNumber',
    'time_title',
    'subject_name',
    'subject_sex',
    'subject_birthday',
    'item_name',
    'item_upperName',
    'item_bottomName',
    'item_step',
    'item_details',
    'item_valid',
    'passedtime',
    'result',
    'typename'
  ]);

  // データを追加
  for (var result in jsonData['results']) {
    var item = jsonData['items'].firstWhere(
        (item) => item['name'] == result['typename'],
        orElse: () => null);
    csvData.add([
      jsonData['title'],
      jsonData['date'],
      jsonData['time']['experimentTime'],
      jsonData['time']['interval'],
      jsonData['time']['measurementNumber'],
      jsonData['time']['title'],
      jsonData['subject']['name'],
      jsonData['subject']['sex'],
      jsonData['subject']['birthday'],
      item != null ? item['name'] : '',
      item != null ? item['upperName'] : '',
      item != null ? item['bottomName'] : '',
      item != null ? item['step'] : '',
      item != null ? item['details'] : '',
      item != null ? item['valid'] : '',
      result['passedtime'],
      result['result'],
      result['typename']
    ]);
  }

  // CSV形式のデータを変換
  String csv = const ListToCsvConverter().convert(csvData);
  return csv;
}
