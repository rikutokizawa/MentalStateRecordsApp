import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'measure_sta_widget.dart' show MeasureStaWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MeasureStaModel extends FlutterFlowModel<MeasureStaWidget> {
  ///  Local state fields for this page.

  bool measuring = false;

  List<bool> valuesetted = [];
  void addToValuesetted(bool item) => valuesetted.add(item);
  void removeFromValuesetted(bool item) => valuesetted.remove(item);
  void removeAtIndexFromValuesetted(int index) => valuesetted.removeAt(index);
  void insertAtIndexInValuesetted(int index, bool item) =>
      valuesetted.insert(index, item);
  void updateValuesettedAtIndex(int index, Function(bool) updateFn) =>
      valuesetted[index] = updateFn(valuesetted[index]);

  int? repeater = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Timer widget.
  final timerInitialTimeMs1 = 0;
  int timerMilliseconds1 = 0;
  String timerValue1 = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs2 = 0;
  int timerMilliseconds2 = 0;
  String timerValue2 = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timerController1.dispose();
    timerController2.dispose();
  }
}
