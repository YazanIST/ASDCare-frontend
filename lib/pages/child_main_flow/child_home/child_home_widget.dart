import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'child_home_model.dart';
export 'child_home_model.dart';

class ChildHomeWidget extends StatefulWidget {
  const ChildHomeWidget({super.key});

  @override
  State<ChildHomeWidget> createState() => _ChildHomeWidgetState();
}

class _ChildHomeWidgetState extends State<ChildHomeWidget> {
  late ChildHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChildHomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            actions: const [],
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).primaryBackground,
                const Color(0xFFE5F1FB)
              ],
              stops: const [0.0, 1.0],
              begin: const AlignmentDirectional(0.0, -1.0),
              end: const AlignmentDirectional(0, 1.0),
            ),
          ),
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Align(
            alignment: const AlignmentDirectional(-1.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 175.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: AuthServiceGroup.getUsernameCall.call(
                        authToken: FFAppState().authToken,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final textGetUsernameResponse = snapshot.data!;
                        return Text(
                          'Hello, ${textGetUsernameResponse.bodyText}',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 24.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: AuthServiceGroup.getUsernameCall.call(
                        authToken: FFAppState().authToken,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final textGetUsernameResponse = snapshot.data!;
                        return Text(
                          'We missed you!!',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                        );
                      },
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('DrawingGame');
                    },
                    text: 'Let\'s draw and unleash your creativity!!',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 150.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
