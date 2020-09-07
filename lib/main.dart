import 'package:souq_app/screens/Welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:souq_app/screens/intro.dart';
import 'package:souq_app/screens/login.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override 
  
  Widget build(BuildContext context) {
  return MaterialApp(
    home: IntroScreen(),
    debugShowCheckedModeBanner: false,
    initialRoute: IntroScreen.id,
    routes: 
    {
      IntroScreen.id:(context)=>IntroScreen(),
      WelcomeScreen.id:(context)=>WelcomeScreen(),
      
    },
  );
 }
}
