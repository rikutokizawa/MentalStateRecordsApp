import '/flutter_flow/flutter_flow_util.dart';
import 'date_detail_widget.dart' show DateDetailWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class DateDetailModel extends FlutterFlowModel<DateDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    expandableExpandableController2.dispose();
  }
}
