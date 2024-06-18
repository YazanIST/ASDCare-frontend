import '/flutter_flow/flutter_flow_util.dart';
import 'parent_onboarding_widget.dart' show ParentOnboardingWidget;
import 'package:flutter/material.dart';

class ParentOnboardingModel extends FlutterFlowModel<ParentOnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
