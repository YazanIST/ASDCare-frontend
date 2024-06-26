import '/flutter_flow/flutter_flow_util.dart';
import 'parent_instructions_widget.dart' show ParentInstructionsWidget;
import 'package:flutter/material.dart';

class ParentInstructionsModel
    extends FlutterFlowModel<ParentInstructionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Bottom Sheet - AddInstruct] action in IconButton widget.
  bool? isUpdated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
