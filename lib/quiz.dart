import 'package:flutter/material.dart';
import 'package:unity_app/soraglar.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;

  void _resetQuiz() async {
    for (var question in soraglar) {
      setState(() {
        question.isLocked = false;
      });
    }
    // _isLocked = false;
    _score = 0;
    _questionNumber = 1;
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    _resetQuiz;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _resetQuiz();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        title: const Text(
          'Flutter Quiz',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      '$_questionNumber/${soraglar.length}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey[600],
                ),
                Expanded(
                  child: PageView.builder(
                    itemCount: soraglar.length,
                    controller: _controller,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final _question = soraglar[index];
                      return buildQuestion(_question);
                    },
                  ),
                ),
                _isLocked ? buildElevatedButton() : const SizedBox.shrink(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 32,
        ),
        Text(
          question.text,
          style: const TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Expanded(
          child: OptionWidget(
            question: question,
            onClickOption: (option) {
              if (question.isLocked) {
                return;
              } else {
                setState(() {
                  question.isLocked = true;
                  question.selectedOption = option;
                });
                _isLocked = question.isLocked;
                if (question.selectedOption!.isCorrect) {
                  _score++;
                }
              }
            },
          ),
        ),
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    int finalScore = _score;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 10,
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
        minimumSize: const Size(100, 60),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      onPressed: () {
        if (_questionNumber < soraglar.length) {
          _controller.nextPage(
            duration: const Duration(microseconds: 250),
            curve: Curves.easeInExpo,
          );
          setState(() {
            _questionNumber++;
            _isLocked = false;
          });
        }
        if (_questionNumber == soraglar.length) {
          _resetQuiz();
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                score: _score,
                finalScore: finalScore,
              ),
            ),
          );
        }
      },
      child: Text(
        _questionNumber < soraglar.length ? 'Next Page' : 'See the result',
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickOption;
  const OptionWidget(
      {super.key, required this.question, required this.onClickOption});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          children: question.options
              .map((option) => buildOption(context, option))
              .toList(),
        ),
      );

  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: () => onClickOption(option),
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(
          top: 8,
          bottom: 8,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: color),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              option.text,
              style: const TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            getIconForOption(option, question),
          ],
        ),
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey;
  }

  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (question.isLocked) {
      if (isSelected) {
        return option.isCorrect
            ? const Icon(
                Icons.check_circle,
                color: Colors.green,
              )
            : const Icon(
                Icons.cancel,
                color: Colors.red,
              );
      } else if (option.isCorrect) {
        return const Icon(
          Icons.check_circle,
          color: Colors.green,
        );
      }
    }
    return const SizedBox.shrink();
  }
}

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.score, required this.finalScore});

  final int score;
  final int finalScore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'You got $finalScore/${soraglar.length}',
                style: const TextStyle(
                  fontSize: 24,
                  letterSpacing: 1.2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Quiz(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                      minimumSize: const Size(120, 60),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Restart',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                      minimumSize: const Size(120, 60),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
