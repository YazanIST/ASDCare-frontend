import '/flutter_flow/flutter_flow_util.dart';
import 'parent_home_widget.dart' show ParentHomeWidget;
import 'package:flutter/material.dart';

class ParentHomeModel extends FlutterFlowModel<ParentHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
