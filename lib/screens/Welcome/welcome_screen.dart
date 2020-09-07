import 'package:souq_app/screens/Welcome/components/body.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'Welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
