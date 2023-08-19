import 'package:flutter/material.dart';
import 'package:unity_app/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(250, 7, 7, 7),
      ),
      home: const MyHomePage2(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: width * 100,
                height: height * 100,
                color: const Color(0xFF22292f),
                child: Image.asset(
                  'images/videogame.gif',
                  alignment: Alignment.topCenter,
                ),
              ),
              Positioned(
                top: height * 50,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(171, 7, 7, 7),
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(20, 20),
                    ),
                  ),
                  width: width * 100,
                  height: height * 50,
                  alignment: Alignment.topCenter,
                  child: Positioned(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 54,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(left: 18),
                          child: const Text(
                            'Unity',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 78,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 18),
                          alignment: Alignment.bottomLeft,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ListViewPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Get started',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: <Widget>[
              Container(
                width: width * 100,
                height: height * 100,
                color: const Color(0xFF22292f),
                child: Image.asset(
                  'images/videogame.gif',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
              Positioned(
                top: height * 50,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(171, 7, 7, 7),
                    borderRadius: BorderRadius.all(
                      Radius.elliptical(20, 20),
                    ),
                  ),
                  width: width * 100,
                  height: height * 50,
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 44,
                      ),
                      const Text(
                        '  Unity',
                        style: TextStyle(
                          fontSize: 78,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 18),
                        alignment: Alignment.bottomLeft,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ListViewPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Get started',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
