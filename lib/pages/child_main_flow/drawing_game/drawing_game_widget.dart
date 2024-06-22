import 'package:a_s_dwithchat/app_state.dart';
import 'package:a_s_dwithchat/flutter_flow/flutter_flow_icon_button.dart';
import 'package:a_s_dwithchat/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/backend/api_requests/api_calls.dart';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'drawing_game_model.dart';

class DrawingGameWidget extends StatefulWidget {
  const DrawingGameWidget({Key? key});

  @override
  State<DrawingGameWidget> createState() => _DrawingGameWidgetState();
}

class _DrawingGameWidgetState extends State<DrawingGameWidget> {
  Uint8List? imageBytes;
  String feedback = '';
  String subject = '';
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final ScreenshotController screenshotController = ScreenshotController();

  @override
  void initState() {
    super.initState();
    fetchGameImage(); // Fetch game image when the widget initializes
  }

  Future<void> fetchGameImage() async {
    try {
      final response =
          await GenerateGameCall().call(authToken: FFAppState().authToken);

      if (response.statusCode == 200) {
        Map<String, dynamic> responseBody = jsonDecode(response.bodyText);
        String base64Image = responseBody['image'];
        subject = responseBody['subject'];
        setState(() {
          imageBytes = base64Decode(base64Image);
        });
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Error $e");
    }
  }

  Future<void> sendImageToFeedbackAPI(String base64Image) async {
    try {
      final response = await GetFeedbackCall().call(
        screenshot: base64Image,
        subject: subject,
        authToken: FFAppState().authToken,
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseBody = jsonDecode(response.bodyText);
        String feedback = responseBody['feedback'];
        showFeedbackDialog(feedback);
        print("Feedback: $feedback");
      } else {
        print("Error getting feedback. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print('An error occurred: $e');
    }
  }

  Future<void> encourageFeedback(String base64Image) async {
    try {
      final response = await FinishGameCall().call(
        screenshot: base64Image,
        subject: subject,
        authToken: FFAppState().authToken,
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseBody = jsonDecode(response.bodyText);
        String finalFeedback = responseBody['finalFeedback'];
        finishGame(finalFeedback);
        print("Final Feedback: $finalFeedback");
      } else {
        print("Error getting feedback. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print('An error occurred: $e');
    }
  }

  void finishGame(String feedback) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: Text("Close"))
        ],
        title: Text("Final Feedback"),
        content: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  feedback,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showFeedbackDialog(String feedback) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"))
        ],
        title: Text("Feedback"),
        content: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  feedback,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showImage() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Close"))
        ],
        content: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: imageBytes != null
                      ? Image.memory(
                          imageBytes!,
                          fit: BoxFit.contain,
                        )
                      : CircularProgressIndicator(), // Show a loading indicator if imageBytes is null
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            color: FlutterFlowTheme.of(context).primaryText,
            onPressed: () async {
              print(subject);
              final image = await screenshotController
                  .captureFromWidget(DrawBoard(), pixelRatio: 2);
              List<int> imageBytes = image;
              String base64Image = base64Encode(imageBytes);
              await encourageFeedback(base64Image);
            },
          ),
          IconButton(
            icon: const Icon(Icons.feedback_outlined),
            color: FlutterFlowTheme.of(context).primaryText,
            onPressed: () async {
              print(subject);
              final image = await screenshotController
                  .captureFromWidget(DrawBoard(), pixelRatio: 2);
              List<int> imageBytes = image;
              String base64Image = base64Encode(imageBytes);
              await sendImageToFeedbackAPI(base64Image);
            },
          ),
          IconButton(
            icon: const Icon(Icons.image_search),
            color: FlutterFlowTheme.of(context).primaryText,
            onPressed: () async {
              showImage();
            },
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: ChangeNotifierProvider(
                create: (context) => DrawModel(),
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(color: Colors.white), // Background color
                          DrawBoard(), // Drawing area
                        ],
                      ),
                    ),
                    DrawTools(),
                  ],
                ),
              ),
            ),
          ),
        ],
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
                  Provider.of<DrawModel>(context, listen: false)
                      .setColor(Colors.red);
                },
              ),
              IconButton(
                icon: const Icon(Icons.brush),
                color: Colors.green,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false)
                      .setColor(Colors.green);
                },
              ),
              IconButton(
                icon: const Icon(Icons.brush),
                color: Colors.blue,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false)
                      .setColor(Colors.blue);
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
                  Provider.of<DrawModel>(context, listen: false)
                      .setBrushSize(4.0);
                },
              ),
              IconButton(
                icon: const Icon(Icons.lens, size: 16),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false)
                      .setBrushSize(8.0);
                },
              ),
              IconButton(
                icon: const Icon(Icons.lens, size: 24),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false)
                      .setBrushSize(12.0);
                },
              ),
              IconButton(
                icon: const Icon(Icons.lens, size: 32),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false)
                      .setBrushSize(16.0);
                },
              ),
              IconButton(
                icon: const Icon(Icons.lens, size: 40),
                color: Colors.black,
                onPressed: () {
                  Provider.of<DrawModel>(context, listen: false)
                      .setBrushSize(20.0);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
