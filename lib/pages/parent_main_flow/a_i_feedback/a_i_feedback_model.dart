import '/flutter_flow/flutter_flow_util.dart';
import 'a_i_feedback_widget.dart' show AIFeedbackWidget;
import 'package:flutter/material.dart';

class AIFeedbackModel extends FlutterFlowModel<AIFeedbackWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
