import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Tutor extends StatefulWidget {
  const Tutor({super.key});

  @override
  State<Tutor> createState() => _TutorState();
}

class _TutorState extends State<Tutor> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
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
            Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VideoBox1(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(250, 7, 7, 7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 84,
                        width: width * 100,
                        child: const Center(
                          child: Text(
                            'What is Unity',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VideoBox2(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(250, 7, 7, 7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 84,
                        width: width * 100,
                        child: const Center(
                          child: Text(
                            'Affixing text to object',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VideoBox3(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(250, 7, 7, 7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 84,
                        width: width * 100,
                        child: const Center(
                          child: Text(
                            'Add mirror',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VideoBox4(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(250, 7, 7, 7),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 84,
                        width: width * 100,
                        child: const Center(
                          child: Text(
                            'Video from green screen',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
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

class VideoBox1 extends StatefulWidget {
  const VideoBox1({super.key});

  @override
  State<VideoBox1> createState() => _VideoBox1State();
}

class _VideoBox1State extends State<VideoBox1> {
  late VideoPlayerController _controller;

  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    _controller = VideoPlayerController.asset('images/videos/unity1.mp4');
    _controller.initialize();
    chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: false,
      looping: false,
      aspectRatio: 16 / 9,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    chewieController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: chewieController != null
            ? Container(
                color: Colors.black,
                child: Chewie(
                  controller: chewieController!,
                ),
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: Colors.blueAccent,
                  backgroundColor: Color.fromARGB(255, 45, 55, 63),
                ),
              ),
      ),
    );
  }
}

class VideoBox2 extends StatefulWidget {
  const VideoBox2({super.key});

  @override
  State<VideoBox2> createState() => _VideoBox2State();
}

class _VideoBox2State extends State<VideoBox2> {
  late VideoPlayerController _controller;

  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    _controller = VideoPlayerController.asset('images/videos/unity2.mp4');
    _controller.initialize();
    chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: false,
      looping: false,
      aspectRatio: 16 / 9,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    chewieController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: chewieController != null
            ? Container(
                color: Colors.black,
                child: Chewie(
                  controller: chewieController!,
                ),
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: Colors.blueAccent,
                  backgroundColor: Color.fromARGB(255, 45, 55, 63),
                ),
              ),
      ),
    );
  }
}

class VideoBox3 extends StatefulWidget {
  const VideoBox3({super.key});

  @override
  State<VideoBox3> createState() => _VideoBox3State();
}

class _VideoBox3State extends State<VideoBox3> {
  late VideoPlayerController _controller;

  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    _controller = VideoPlayerController.asset('images/videos/unity3.mp4');
    _controller.initialize();
    chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: false,
      looping: false,
      aspectRatio: 16 / 9,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    chewieController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: chewieController != null
            ? Container(
                color: Colors.black,
                child: Chewie(
                  controller: chewieController!,
                ),
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: Colors.blueAccent,
                  backgroundColor: Color.fromARGB(255, 45, 55, 63),
                ),
              ),
      ),
    );
  }
}

class VideoBox4 extends StatefulWidget {
  const VideoBox4({super.key});

  @override
  State<VideoBox4> createState() => _VideoBox4State();
}

class _VideoBox4State extends State<VideoBox4> {
  late VideoPlayerController _controller;

  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    _controller = VideoPlayerController.asset('images/videos/unity4.mp4');
    _controller.initialize();
    chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: false,
      looping: false,
      aspectRatio: 16 / 9,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    chewieController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: chewieController != null
            ? Container(
                color: Colors.black,
                child: Chewie(
                  controller: chewieController!,
                ),
              )
            : const Center(
                child: CircularProgressIndicator(
                  color: Colors.blueAccent,
                  backgroundColor: Color.fromARGB(255, 45, 55, 63),
                ),
              ),
      ),
    );
  }
}
