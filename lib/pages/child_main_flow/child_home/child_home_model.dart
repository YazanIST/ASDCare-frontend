import '/flutter_flow/flutter_flow_util.dart';
import 'child_home_widget.dart' show ChildHomeWidget;
import 'package:flutter/material.dart';

class ChildHomeModel extends FlutterFlowModel<ChildHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
