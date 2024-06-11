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
