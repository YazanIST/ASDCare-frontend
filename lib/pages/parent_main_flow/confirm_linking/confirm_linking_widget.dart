import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'confirm_linking_model.dart';
export 'confirm_linking_model.dart';

class ConfirmLinkingWidget extends StatefulWidget {
  const ConfirmLinkingWidget({
    super.key,
    required this.childEmail,
    required this.doctorEmail,
    required this.pinCode,
  });

  final String? childEmail;
  final String? doctorEmail;
  final String? pinCode;

  @override
  State<ConfirmLinkingWidget> createState() => _ConfirmLinkingWidgetState();
}

class _ConfirmLinkingWidgetState extends State<ConfirmLinkingWidget> {
  late ConfirmLinkingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmLinkingModel());

    _model.enteredPincodeTextController ??= TextEditingController();
    _model.enteredPincodeFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 330.0,
      height: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Enter PIN Code',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 24.0),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _model.enteredPincodeTextController,
                  focusNode: _model.enteredPincodeFocusNode,
                  autofocus: true,
                  autofillHints: const [AutofillHints.oneTimeCode],
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'PIN Code',
                    labelStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsets.all(24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                  textAlign: TextAlign.center,
                  minLines: 1,
                  maxLength: 6,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      null,
                  keyboardType: TextInputType.number,
                  validator: _model.enteredPincodeTextControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              var shouldSetState = false;
              if (widget.pinCode == _model.enteredPincodeTextController.text) {
                _model.apiResultl6c = await AuthServiceGroup
                    .confirmChildLinkingWithDoctorCall
                    .call(
                  childEmail: widget.childEmail,
                  doctorEmail: widget.doctorEmail,
                  authToken: FFAppState().authToken,
                );

                shouldSetState = true;
                if ((_model.apiResultl6c?.succeeded ?? true)) {
                  context.pushNamed(
                    'ParentHome',
                    queryParameters: {
                      'childEmail': serializeParam(
                        widget.childEmail,
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );

                  if (shouldSetState) setState(() {});
                  return;
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Something went wrong',
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).info,
                        ),
                      ),
                      duration: const Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).error,
                    ),
                  );
                  if (shouldSetState) setState(() {});
                  return;
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Incorrect PIN Code',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    duration: const Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).error,
                  ),
                );
                if (shouldSetState) setState(() {});
                return;
              }

              if (shouldSetState) setState(() {});
            },
            text: 'Confirm',
            options: FFButtonOptions(
              width: 150.0,
              height: 50.0,
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).info,
                    letterSpacing: 0.0,
                  ),
              elevation: 1.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ],
      ),
    );
  }
}
