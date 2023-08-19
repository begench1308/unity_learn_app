import 'package:flutter/material.dart';

class GetStartExample extends StatelessWidget {
  const GetStartExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic Starting Code'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'function startGame() {\n'
                '  myGameArea.start();\n'
                '}\n'
                '\n'
                'var myGameArea = {\n'
                '  canvas : document.createElement("canvas"),\n'
                '  start : function() {\n'
                '    this.canvas.width = 480;\n'
                '    this.canvas.height = 270;\n'
                '    this.context = this.canvas.getContext("2d");\n'
                '    document.body.insertBefore(this.canvas, document.body.childNodes[0]);\n'
                '  }\n'
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
