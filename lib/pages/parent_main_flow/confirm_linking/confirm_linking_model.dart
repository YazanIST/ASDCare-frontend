import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirm_linking_widget.dart' show ConfirmLinkingWidget;
import 'package:flutter/material.dart';

class ConfirmLinkingModel extends FlutterFlowModel<ConfirmLinkingWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for enteredPincode widget.
  FocusNode? enteredPincodeFocusNode;
  TextEditingController? enteredPincodeTextController;
  String? Function(BuildContext, String?)?
      enteredPincodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Confirm Child Linking with Doctor)] action in Button widget.
  ApiCallResponse? apiResultl6c;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    enteredPincodeFocusNode?.dispose();
    enteredPincodeTextController?.dispose();
  }
}
