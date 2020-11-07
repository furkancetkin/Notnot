import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'HalfCircle.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('NotNot'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: CustomPaint(
                size: Size(100, 100),
                painter: HalfCircle(),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Transform.rotate(
                      angle: -pi / 2,
                      child: CustomPaint(
                        size: Size(100, 100),
                        painter: HalfCircle(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.brown[200],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Transform.rotate(
                      angle: pi / 2,
                      child: CustomPaint(
                        size: Size(100, 100),
                        painter: HalfCircle(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Transform.rotate(
                angle: pi,
                child: CustomPaint(
                  size: Size(100, 100),
                  painter: HalfCircle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
