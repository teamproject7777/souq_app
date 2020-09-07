import 'package:souq_app/const/colors.dart';
import 'package:souq_app/screens/Login/login_screen.dart';
import 'package:souq_app/screens/home/one.dart';
import 'package:souq_app/screens/home/tow.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen()';
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex= 2;

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      One(),
      Center(child: Text("الرئيسية")),
      Tow(),
    ];
    return Scaffold(
    
     backgroundColor: KHomeColor,
            
      // fear and loathing in las vegas 
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: KPrimaryColor,
        onTap: _onTapped,
        items: [
        BottomNavigationBarItem( title: Text("اكتشف"), icon: Icon(Icons.explore)),
        BottomNavigationBarItem( title: Text("الرئيسية"), icon: Icon(Icons.home)),
        BottomNavigationBarItem( title: Text("الملف الشخصي"), icon: Icon(Icons.person)),
        
        
      ]),

    );
  }
}