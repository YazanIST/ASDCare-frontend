import '/flutter_flow/flutter_flow_util.dart';
import 'drawing_game_widget.dart' show DrawingGameWidget;
import 'package:flutter/material.dart';

class DrawingGameModel extends FlutterFlowModel<DrawingGameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
