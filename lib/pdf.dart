import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class pdfViewPage extends StatelessWidget {
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
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const pdfExample(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 22,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                  ),
                  minimumSize: const Size(300, 55),
                  backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                  shadowColor: Colors.grey,
                ),
                child: const Text('Unity G.D. Essentials'),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const pdfExample2(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 22,
                  ),
                  minimumSize: const Size(300, 55),
                  backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                  shadowColor: Colors.grey,
                ),
                child: const Text('2D Game Gevelopment'),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const pdfExample3(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 22,
                  ),
                  minimumSize: const Size(300, 55),
                  backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                  shadowColor: Colors.grey,
                ),
                child: const Text('Learning C# with Unity 3D'),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const pdfExample4(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 22,
                  ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18),
                    ),
                  ),
                  minimumSize: const Size(300, 55),
                  backgroundColor: const Color.fromARGB(250, 7, 7, 7),
                  shadowColor: Colors.grey,
                ),
                child: const Text('Example Apps'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class pdfExample extends StatefulWidget {
  const pdfExample({
    super.key,
  });

  @override
  State<pdfExample> createState() => _pdfExampleState();
}

class _pdfExampleState extends State<pdfExample> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('images/books/essentials.pdf'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfView(
        controller: pdfController,
        //document: snapshot.data,
        onDocumentLoaded: (document) {
          setState(() {
            //_allPagesCount = document.pagesCount;
          });
        },
        onPageChanged: (page) {
          setState(() {
            // _actualPageNumber = page;
          });
        },
      ),
    );
  }
}

class pdfExample2 extends StatefulWidget {
  const pdfExample2({Key? key}) : super(key: key);

  @override
  State<pdfExample2> createState() => _pdfExample2State();
}

class _pdfExample2State extends State<pdfExample2> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('images/books/2dgame.pdf'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfView(
        controller: pdfController,
        //document: snapshot.data,
        onDocumentLoaded: (document) {
          setState(() {
            //_allPagesCount = document.pagesCount;
          });
        },
        onPageChanged: (page) {
          setState(() {
            // _actualPageNumber = page;
          });
        },
      ),
    );
  }
}

class pdfExample3 extends StatefulWidget {
  const pdfExample3({Key? key}) : super(key: key);

  @override
  State<pdfExample3> createState() => _pdfExample3State();
}

class _pdfExample3State extends State<pdfExample3> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('images/books/sharp.pdf'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfView(
        controller: pdfController,
        //document: snapshot.data,
        onDocumentLoaded: (document) {
          setState(() {
            //_allPagesCount = document.pagesCount;
          });
        },
        onPageChanged: (page) {
          setState(() {
            // _actualPageNumber = page;
          });
        },
      ),
    );
  }
}

class pdfExample4 extends StatefulWidget {
  const pdfExample4({Key? key}) : super(key: key);

  @override
  State<pdfExample4> createState() => _pdfExample4State();
}

class _pdfExample4State extends State<pdfExample4> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('images/books/action.pdf'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfView(
        controller: pdfController,
        //document: snapshot.data,
        onDocumentLoaded: (document) {
          setState(() {
            //_allPagesCount = document.pagesCount;
          });
        },
        onPageChanged: (page) {
          setState(() {
            // _actualPageNumber = page;
          });
        },
      ),
    );
  }
}
