import '/flutter_flow/flutter_flow_util.dart';
import 'gdetails_widget.dart' show GdetailsWidget;
import 'package:flutter/material.dart';

class GdetailsModel extends FlutterFlowModel<GdetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
