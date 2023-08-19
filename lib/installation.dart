import 'package:flutter/material.dart';
import 'package:unity_app/pdf.dart';
import 'package:unity_app/quiz.dart';
import 'package:unity_app/soraglar.dart';
import 'package:unity_app/sourcecodes/sourcecodes.dart';
import 'package:unity_app/tutorial.dart';

class InstallUn extends StatefulWidget {
  const InstallUn({super.key});

  @override
  State<InstallUn> createState() => _InstallUnState();
}

class _InstallUnState extends State<InstallUn> {
  int _questionNumber = 1;

  int _score = 0;

  bool _isLocked = false;

  void _resetQuiz() async {
    for (var question in soraglar) {
      setState(() {
        question.isLocked = false;
      });
    }
    _score = 0;
    _questionNumber = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Tutor(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                  ),
                  minimumSize: const Size(300, 80),
                  backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                  shadowColor: Colors.grey,
                ),
                child: const Text('Tutorial'),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => pdfViewPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                  minimumSize: const Size(300, 80),
                  backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                  shadowColor: Colors.grey,
                ),
                child: const Text('Books'),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CodePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                  minimumSize: const Size(300, 80),
                  backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                  shadowColor: Colors.grey,
                ),
                child: const Text('Codes'),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  _resetQuiz();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Quiz(),
                    ),
                  );
                },
                child: const Text('Quiz'),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
                    ),
                  ),
                  minimumSize: const Size(300, 80),
                  backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                  shadowColor: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
