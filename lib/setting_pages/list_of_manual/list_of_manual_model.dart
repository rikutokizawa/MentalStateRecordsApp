import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_manual_widget.dart' show ListOfManualWidget;
import 'package:flutter/material.dart';

class ListOfManualModel extends FlutterFlowModel<ListOfManualWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
