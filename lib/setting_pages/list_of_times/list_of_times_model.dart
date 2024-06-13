import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_times_widget.dart' show ListOfTimesWidget;
import 'package:flutter/material.dart';

class ListOfTimesModel extends FlutterFlowModel<ListOfTimesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
