import '/flutter_flow/flutter_flow_util.dart';
import 'games_played_widget.dart' show GamesPlayedWidget;
import 'package:flutter/material.dart';

class GamesPlayedModel extends FlutterFlowModel<GamesPlayedWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
