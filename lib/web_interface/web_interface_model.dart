import '/flutter_flow/flutter_flow_util.dart';
import 'web_interface_widget.dart' show WebInterfaceWidget;
import 'package:flutter/material.dart';

class WebInterfaceModel extends FlutterFlowModel<WebInterfaceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
