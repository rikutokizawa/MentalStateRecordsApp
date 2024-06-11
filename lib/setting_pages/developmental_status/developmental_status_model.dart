import '/flutter_flow/flutter_flow_util.dart';
import 'developmental_status_widget.dart' show DevelopmentalStatusWidget;
import 'package:flutter/material.dart';

class DevelopmentalStatusModel
    extends FlutterFlowModel<DevelopmentalStatusWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
