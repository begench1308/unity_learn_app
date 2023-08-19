import 'package:flutter/material.dart';
import 'package:unity_app/sourcecodes/classes.dart';
import 'package:unity_app/sourcecodes/component.dart';
import 'package:unity_app/sourcecodes/count.dart';
import 'package:unity_app/sourcecodes/frame.dart';
import 'package:unity_app/sourcecodes/move.dart';
import 'package:unity_app/sourcecodes/push.dart';
import 'package:unity_app/sourcecodes/start.dart';

class CodePage extends StatelessWidget {
  const CodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(250, 7, 7, 7),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GetStartExample(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(250, 7, 7, 7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      duration: const Duration(milliseconds: 500),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '  Get started',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ComponentExample(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(250, 7, 7, 7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      duration: const Duration(milliseconds: 500),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '  Add a Component',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FramesExample(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(250, 7, 7, 7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      duration: const Duration(milliseconds: 500),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '  Frames',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MovementExample(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(250, 7, 7, 7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      duration: const Duration(milliseconds: 500),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '  Movement',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PushExample(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(250, 7, 7, 7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      duration: const Duration(milliseconds: 500),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '  Simple Push',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ClassesExample(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(250, 7, 7, 7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      duration: const Duration(milliseconds: 500),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '  Classes',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HitCountExample(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: AnimatedContainer(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(250, 7, 7, 7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      duration: const Duration(milliseconds: 500),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              '  Hit Count',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
