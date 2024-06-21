import '/flutter_flow/flutter_flow_util.dart';
import 'doctor_instructions_widget.dart' show DoctorInstructionsWidget;
import 'package:flutter/material.dart';

class DoctorInstructionsModel
    extends FlutterFlowModel<DoctorInstructionsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
