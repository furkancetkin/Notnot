import 'dart:async';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:notnot/anaSayfa.dart';
import 'package:notnot/sesButonu.dart';
import 'package:notnot/yonDatalari.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final oynatici = AudioCache();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Timer timer;
  int start = 3;
  int yonIndex = Random().nextInt(11) + 1;
  int dogrular = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (start < 1) {
          return _showDialog();
          timer.cancel();
        } else {
          start--;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal[300]),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.check,
                        size: 50,
                      ),
                      Text(
                        dogrular.toString(),
                        style: TextStyle(
                            //color: Color(0xFF1BC0C5),
                            color: Colors.teal[300],
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 180,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.teal[300]),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.timer,
                        size: 50,
                      ),
                      Text(
                        "$start",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 75),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  splashRadius: 70,
                  icon: Icon(Icons.keyboard_arrow_up, size: 100),
                  color: Colors.deepOrangeAccent,
                  onPressed: () {
                    if (yonIndex == 0 ||
                        yonIndex == 5 ||
                        yonIndex == 6 ||
                        yonIndex == 7 ||
                        yonIndex == 8) {
                      SesButonu.sesButonu == true
                          ? oynatici.play('true.mp3')
                          : null;
                      setState(() {
                        yonIndex = Random().nextInt(11) + 1;
                        dogrular++;
                        start = 3;
                      });
                    } else {
                      return _showDialog();
                    }
                  },
                  splashColor: Colors.deepOrangeAccent,
                  iconSize: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  splashRadius: 70,
                  icon: Icon(Icons.keyboard_arrow_left, size: 100),
                  color: Colors.deepOrangeAccent,
                  onPressed: () {
                    if (yonIndex == 1 ||
                        yonIndex == 4 ||
                        yonIndex == 6 ||
                        yonIndex == 7 ||
                        yonIndex == 9) {
                      SesButonu.sesButonu == true
                          ? oynatici.play('true.mp3')
                          : null;
                      setState(() {
                        yonIndex = Random().nextInt(11) + 1;
                        dogrular++;
                        start = 3;
                      });
                    } else {
                      return _showDialog();
                    }
                  },
                  splashColor: Colors.deepOrangeAccent,
                  iconSize: 100,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        GetYonData.yonler[yonIndex],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  width: 160,
                  height: 160,
                ),
                IconButton(
                  splashRadius: 70,
                  icon: Icon(Icons.keyboard_arrow_right, size: 100),
                  color: Colors.deepOrangeAccent,
                  onPressed: () {
                    if (yonIndex == 2 ||
                        yonIndex == 4 ||
                        yonIndex == 5 ||
                        yonIndex == 7 ||
                        yonIndex == 10) {
                      SesButonu.sesButonu == true
                          ? oynatici.play('true.mp3')
                          : null;
                      setState(() {
                        yonIndex = Random().nextInt(11) + 1;
                        dogrular++;
                        start = 3;
                      });
                    } else {
                      return _showDialog();
                    }
                  },
                  splashColor: Colors.deepOrangeAccent,
                  iconSize: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Container(),
                IconButton(
                  splashRadius: 70,
                  icon: Icon(Icons.keyboard_arrow_down, size: 100),
                  color: Colors.deepOrangeAccent,
                  onPressed: () {
                    if (yonIndex == 3 ||
                        yonIndex == 4 ||
                        yonIndex == 5 ||
                        yonIndex == 6 ||
                        yonIndex == 11) {
                      SesButonu.sesButonu == true
                          ? oynatici.play('true.mp3')
                          : null;
                      setState(() {
                        yonIndex = Random().nextInt(11) + 1;
                        dogrular++;
                        start = 3;
                      });
                    } else {
                      return _showDialog();
                    }
                  },
                  splashColor: Colors.deepOrangeAccent,
                  iconSize: 100,
                ),
                //Container()
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog() {
    SesButonu.sesButonu == true ? oynatici.play('false.mp3') : null;
    timer.cancel();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            height: 250,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.cancel,
                      color: Colors.redAccent,
                      size: 100,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 125,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.teal[300],
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AnaSayfa()));
                            },
                            child: Center(
                              child: Text(
                                "Anasayfa",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 125,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.teal[300],
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InputPage()));
                            },
                            child: Center(
                              child: Text(
                                "Tekrar",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
