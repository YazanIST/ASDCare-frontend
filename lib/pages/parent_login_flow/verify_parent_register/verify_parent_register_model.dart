import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'verify_parent_register_widget.dart' show VerifyParentRegisterWidget;
import 'package:flutter/material.dart';

class VerifyParentRegisterModel
    extends FlutterFlowModel<VerifyParentRegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for enteredPincode widget.
  FocusNode? enteredPincodeFocusNode;
  TextEditingController? enteredPincodeTextController;
  String? Function(BuildContext, String?)?
      enteredPincodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Register Parent)] action in Button widget.
  ApiCallResponse? apiResultgb6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    enteredPincodeFocusNode?.dispose();
    enteredPincodeTextController?.dispose();
  }
}
