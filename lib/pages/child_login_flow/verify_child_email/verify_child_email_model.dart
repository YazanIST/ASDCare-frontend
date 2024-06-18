import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'verify_child_email_widget.dart' show VerifyChildEmailWidget;
import 'package:flutter/material.dart';

class VerifyChildEmailModel extends FlutterFlowModel<VerifyChildEmailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for enteredPincode widget.
  FocusNode? enteredPincodeFocusNode;
  TextEditingController? enteredPincodeTextController;
  String? Function(BuildContext, String?)?
      enteredPincodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Send User PIN)] action in Button widget.
  ApiCallResponse? apiResult8gs;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    enteredPincodeFocusNode?.dispose();
    enteredPincodeTextController?.dispose();
  }
}
