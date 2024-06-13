import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_subjects_widget.dart' show ListOfSubjectsWidget;
import 'package:flutter/material.dart';

class ListOfSubjectsModel extends FlutterFlowModel<ListOfSubjectsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
