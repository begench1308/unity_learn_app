import 'package:flutter/material.dart';

class AboutUn extends StatefulWidget {
  const AboutUn({super.key});

  @override
  State<AboutUn> createState() => _AboutUnState();
}

class _AboutUnState extends State<AboutUn> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Color.fromARGB(250, 7, 7, 7),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 6,
                  ),
                  Image.asset(
                    'images/unity3d.png',
                    height: 220,
                    width: width * 100,
                    fit: BoxFit.cover,
                  ),
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '  Unity',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' - is a cross-platform game development environment developed '
                              'by the American company Unity Technologies. Unity allows you to '
                              'create applications that run on over 25 different platforms, '
                              'including personal computers, game consoles, mobile devices, web '
                              'applications, and more. The release of Unity took place in 2005 '
                              'and since then there has been constant development.\n'
                              ' The main advantages of Unity are the presence of a visual '
                              'development environment, cross-platform support and a modular '
                              'system of components. The disadvantages include the appearance '
                              'of difficulties when working with multicomponent circuits and '
                              'difficulties when connecting external libraries.\n'
                              ' Thousands of games, applications, visualizations of mathematical '
                              'models are written on Unity, which cover many platforms and genres. '
                              'At the same time, Unity is used by both large developers and independent studios.',
                          style: TextStyle(
                            fontSize: 20,
                            wordSpacing: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
