import 'package:flutter/material.dart';
import 'InputPage.dart';

void main() {
  runApp(NotNot());
}

class NotNot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
