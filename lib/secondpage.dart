import 'package:flutter/material.dart';
import 'package:unity_app/aboutun.dart';
import 'package:unity_app/installation.dart';
import 'package:unity_app/learning.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController? _scrollController;
  bool lastStatus = true;
  double height = 200;

  void _scrollListener() {
    if (_isShrink != lastStatus) {
      setState(() {
        lastStatus = _isShrink;
      });
    }
  }

  bool get _isShrink {
    return _scrollController != null &&
        _scrollController!.hasClients &&
        _scrollController!.offset > (height - kToolbarHeight);
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController?.removeListener(_scrollListener);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                backgroundColor: Color.fromARGB(250, 7, 7, 7),
                pinned: true,
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'images/unitymain.jpg',
                    fit: BoxFit.cover,
                  ),
                  collapseMode: CollapseMode.parallax,
                  title: _isShrink
                      ? const Text(
                          "Unity",
                          style: TextStyle(color: Colors.black),
                        )
                      : null,
                ),
              ),
            ];
          },
          body: SafeArea(
            child: ListView(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        height: 280,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Card(
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'images/un1p.jpg',
                                width: 380,
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Text(
                                    '   About Unity',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 11, 20),
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutUn(),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 280,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Card(
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'images/unity2p.jpg',
                                width: 380,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Text(
                                    '   How to Learn',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 11, 20),
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InstallUn(),
                          ),
                        );
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: 280,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Card(
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image.asset(
                                'images/unity3p.png',
                                width: 380,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 4),
                                  child: Text(
                                    '   Projects',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 11, 20),
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LearUn(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        width: width * 50,
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 45),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    size: 26,
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info,
                  size: 26,
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
