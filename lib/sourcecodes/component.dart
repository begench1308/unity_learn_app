import 'package:flutter/material.dart';

class ComponentExample extends StatelessWidget {
  const ComponentExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a Component'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'var myGamePiece;\n'
                '\n'
                'function startGame() {\n'
                '  myGameArea.start();\n'
                '  myGamePiece = new component(30, 30, "red", 10, 120);\n'
                '}\n'
                '\n'
                'function component(width, height, color, x, y) {\n'
                '  this.width = width;\n'
                ' this.height = height;\n'
                ' this.x = x;\n'
                '  this.y = y;\n'
                ' ctx = myGameArea.context;\n'
                '  ctx.fillStyle = color;\n'
                '  ctx.fillRect(this.x, this.y, this.width, this.height);\n'
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
