import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  static String id = 'IntroScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
      Container(
      child: Center(
        child: Text("intro"),
      ),
    )
      ),
    );
  }
}