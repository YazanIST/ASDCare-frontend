import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'parent_home_widget.dart' show ParentHomeWidget;
import 'package:flutter/material.dart';

class ParentHomeModel extends FlutterFlowModel<ParentHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Doctor Email For Parent)] action in ChatWithDoctor widget.
  ApiCallResponse? getDoctorEmail;
  // Stores action output result for [Backend Call - API (Fetch User Email)] action in ChatWithDoctor widget.
  ApiCallResponse? getParentEmail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
