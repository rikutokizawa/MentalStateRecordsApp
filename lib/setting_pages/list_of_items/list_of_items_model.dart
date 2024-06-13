import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_items_widget.dart' show ListOfItemsWidget;
import 'package:flutter/material.dart';

class ListOfItemsModel extends FlutterFlowModel<ListOfItemsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
