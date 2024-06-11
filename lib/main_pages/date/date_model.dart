import '/flutter_flow/flutter_flow_util.dart';
import 'date_widget.dart' show DateWidget;
import 'package:flutter/material.dart';

class DateModel extends FlutterFlowModel<DateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
