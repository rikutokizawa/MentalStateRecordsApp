import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_date_widget.dart' show ListOfDateWidget;
import 'package:flutter/material.dart';

class ListOfDateModel extends FlutterFlowModel<ListOfDateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
