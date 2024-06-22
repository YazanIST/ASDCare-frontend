import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pick_doctor_widget.dart' show PickDoctorWidget;
import 'package:flutter/material.dart';

class PickDoctorModel extends FlutterFlowModel<PickDoctorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Send PIN to Doctor for Child Linking)] action in Button widget.
  ApiCallResponse? pincode;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
