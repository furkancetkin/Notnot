import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:notnot/InputPage.dart';
import 'package:notnot/secilenButon.dart';
import 'package:notnot/sesButonu.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Play(),
      ),
    );
  }
}

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 400),
              width: 150,
              height: 70,
              child: RaisedButton(
                color: Colors.teal[300],
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.play_circle_filled,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text(
                      "Oyna",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                LiteRollingSwitch(
                  value: SesButonu.sesButonu,
                  textOn: "On",
                  textOff: "Off",
                  colorOn: Colors.teal[300],
                  colorOff: Colors.redAccent,
                  iconOn: Icons.notifications,
                  iconOff: Icons.notifications_off,
                  textSize: 18.0,
                  animationDuration: Duration(milliseconds: 400),
                  onChanged: (bool position) {
                    print("Buton durumu $position");
                    SesButonu.sesButonu = position;
                  },
                ),
                DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.deepOrangeAccent,
                            size: 32,
                          ),
                        ),
                      ),
                      value: "default",
                    ),
                    DropdownMenuItem(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.send,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                      value: "send",
                    ),
                    DropdownMenuItem(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.keyboard_backspace,
                            color: Colors.deepOrangeAccent,
                            size: 30,
                          ),
                        ),
                      ),
                      value: "sade-ok",
                    ),
                    DropdownMenuItem(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_drop_down_circle,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                      value: "circle-ok",
                    ),
                    DropdownMenuItem(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.brightness_2,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                      value: "ay",
                    ),
                    DropdownMenuItem(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.star,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                      value: "yildiz",
                    ),
                  ],
                  onChanged: (String secilen) {
                    setState(() {
                      SecilenButon.secilenButon = secilen;
                    });
                  },
                  value: SecilenButon.secilenButon,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
