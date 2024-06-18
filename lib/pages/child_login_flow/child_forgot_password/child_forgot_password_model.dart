import '/flutter_flow/flutter_flow_util.dart';
import 'child_forgot_password_widget.dart' show ChildForgotPasswordWidget;
import 'package:flutter/material.dart';

class ChildForgotPasswordModel
    extends FlutterFlowModel<ChildForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode1;
  TextEditingController? usernameTextController1;
  String? Function(BuildContext, String?)? usernameTextController1Validator;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode2;
  TextEditingController? usernameTextController2;
  String? Function(BuildContext, String?)? usernameTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode1?.dispose();
    usernameTextController1?.dispose();

    usernameFocusNode2?.dispose();
    usernameTextController2?.dispose();
  }
}
