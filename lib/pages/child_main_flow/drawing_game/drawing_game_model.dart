import '/flutter_flow/flutter_flow_util.dart';
import 'drawing_game_widget.dart' show DrawingGameWidget;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';  // Add this import for Provider

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

class DrawModel extends ChangeNotifier {
  Color _color = Colors.black;
  double _brushSize = 4.0;
  bool _isEraser = false;

  Color get color => _color;
  double get brushSize => _brushSize;
  bool get isEraser => _isEraser;

  void setColor(Color color) {
    _color = color;
    _isEraser = false;
    notifyListeners();
  }

  void setBrushSize(double size) {
    _brushSize = size;
    _isEraser = false;
    notifyListeners();
  }

  void setEraser() {
    _isEraser = true;
    notifyListeners();
  }
}