import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'drawing_game_model.dart';
import 'package:provider/provider.dart';  // Add this import for Provider

export 'drawing_game_model.dart';

class DrawingGameWidget extends StatefulWidget {
  const DrawingGameWidget({super.key});

  @override
  State<DrawingGameWidget> createState() => _DrawingGameWidgetState();
}

class _DrawingGameWidgetState extends State<DrawingGameWidget> {
  late DrawingGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrawingGameModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: ChangeNotifierProvider(
        create: (context) => DrawModel(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Expanded(child: DrawBoard()),
              DrawTools(),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawBoard extends StatefulWidget {
  @override
  _DrawBoardState createState() => _DrawBoardState();
}

class _DrawBoardState extends State<DrawBoard> {
  List<DrawnLine> _lines = [];
  List<Offset> _currentLine = [];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: (details) {
        setState(() {
          RenderBox renderBox = context.findRenderObject() as RenderBox;
          Offset point = renderBox.globalToLocal(details.globalPosition);
          _currentLine = [point];
          DrawModel drawModel = Provider.of<DrawModel>(context, listen: false);
          Paint paint = Paint()
            ..color = drawModel.isEraser ? Colors.white : drawModel.color
            ..strokeWidth = drawModel.brushSize
            ..strokeCap = StrokeCap.round;
          _lines.add(DrawnLine(_currentLine, paint));
        });
      },
      onPanUpdate: (details) {
        setState(() {
          RenderBox renderBox = context.findRenderObject() as RenderBox;
          Offset point = renderBox.globalToLocal(details.globalPosition);
          _currentLine.add(point);
        });
      },
      onPanEnd: (details) {
        setState(() {
          _currentLine = [];
        });
      },
      child: CustomPaint(
        size: Size.infinite,
        painter: DrawPainter(_lines),
      ),
    );
  }
}

class DrawPainter extends CustomPainter {
  final List<DrawnLine> lines;
  DrawPainter(this.lines);

  @override
  void paint(Canvas canvas, Size size) {
    for (DrawnLine line in lines) {
      for (int i = 0; i < line.points.length - 1; i++) {
        canvas.drawLine(line.points[i], line.points[i + 1], line.paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class DrawnLine {
  List<Offset> points;
  Paint paint;

  DrawnLine(this.points, this.paint);
}

class DrawTools extends StatelessWidget {
  const DrawTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.brush),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false)
                      .setColor(Colors.black);
                },
              ),
              IconButton(
                icon: const Icon(Icons.brush),
                color: Colors.red,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false).setColor(Colors.red);
                },
              ),
              IconButton(
                icon: const Icon(Icons.brush),
                color: Colors.green,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false).setColor(Colors.green);
                },
              ),
              IconButton(
                icon: const Icon(Icons.brush),
                color: Colors.blue,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false).setColor(Colors.blue);
                },
              ),
              IconButton(
                icon: const Icon(Icons.brush),
                color: Colors.yellow,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false)
                      .setColor(Colors.yellow);
                },
              ),
              IconButton(
                icon: const Icon(Icons.clear),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false).setEraser();
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.lens, size: 8),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false).setBrushSize(4.0);
                },
              ),
              IconButton(
                icon: const Icon(Icons.lens, size: 16),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false).setBrushSize(8.0);
                },
              ),
              IconButton(
                icon: const Icon(Icons.lens, size: 24),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false).setBrushSize(12.0);
                },
              ),
              IconButton(
                icon: const Icon(Icons.lens, size: 32),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false).setBrushSize(16.0);
                },
              ),
              IconButton(
                icon: const Icon(Icons.lens, size: 40),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false).setBrushSize(20.0);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
