import '/flutter_flow/flutter_flow_util.dart';
import 'panyer_widget.dart' show PanyerWidget;
import 'package:flutter/material.dart';

class PanyerModel extends FlutterFlowModel<PanyerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
