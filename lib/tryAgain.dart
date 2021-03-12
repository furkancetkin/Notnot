import 'package:flutter/material.dart';
import 'package:notnot/InputPage.dart';

class TryAgain extends StatefulWidget {
  @override
  _TryAgainState createState() => _TryAgainState();
}

class _TryAgainState extends State<TryAgain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
                child: Text("Try Again"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
