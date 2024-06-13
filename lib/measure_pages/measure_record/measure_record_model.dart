import '/flutter_flow/flutter_flow_util.dart';
import '/measure_pages/mesurement_slider/mesurement_slider_widget.dart';
import 'measure_record_widget.dart' show MeasureRecordWidget;
import 'package:flutter/material.dart';

class MeasureRecordModel extends FlutterFlowModel<MeasureRecordWidget> {
  ///  Local state fields for this page.

  int repeater = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for mesurementSlider dynamic component.
  late FlutterFlowDynamicModels<MesurementSliderModel> mesurementSliderModels;

  @override
  void initState(BuildContext context) {
    mesurementSliderModels =
        FlutterFlowDynamicModels(() => MesurementSliderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mesurementSliderModels.dispose();
  }
}
