import 'package:flutter/material.dart';

class FramesExample extends StatelessWidget {
  const FramesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frames to Components'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'var myGameArea = {\n'
                '  canvas : document.createElement("canvas"),\n'
                '  start : function() {\n'
                '    this.canvas.width = 480;\n'
                '    this.canvas.height = 270;\n'
                '    this.context = this.canvas.getContext("2d");\n'
                '    document.body.insertBefore(this.canvas, document.body.childNodes[0]);\n'
                '    this.interval = setInterval(updateGameArea, 20);\n'
                '  },\n'
                '  clear : function() {\n'
                '    this.context.clearRect(0, 0, this.canvas.width, this.canvas.height);\n'
                '  }\n'
                '}\n'
                '\n'
                'function component(width, height, color, x, y) {\n'
                '  this.width = width;\n'
                '  this.height = height;\n'
                '  this.x = x;\n'
                '  this.y = y;\n'
                '  this.update = function(){\n'
                '    ctx = myGameArea.context;\n'
                '    ctx.fillStyle = color;\n'
                '    ctx.fillRect(this.x, this.y, this.width, this.height);\n'
                '  }\n'
                '}\n'
                '\n'
                'function updateGameArea() {\n'
                '  myGameArea.clear();\n'
                '  myGamePiece.update();\n'
                '}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
