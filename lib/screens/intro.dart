

import 'package:souq_app/const/colors.dart';
import 'package:souq_app/screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  static String id = 'IntroScreen';
  final introKey = GlobalKey<IntroductionScreenState>();
  final pageDecoration = PageDecoration(
    titleTextStyle: PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
    contentPadding: const EdgeInsets.all(20),
    // pageColor: Colors.white,
  );
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("assets/images/search.png"),
          title: "Search",
          body: "search for favorite product now and easy get it",
          // footer: Text(
          //   "Care",
          //   style: TextStyle(color: Colors.black),
          // ),
            footer: RaisedButton(
            onPressed: () {
              introKey.currentState?.animateScroll(0);
           
            },
            child: const Text(
              'Start',
              style: TextStyle(color: Colors.white),
            ),
            color: KButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          decoration: pageDecoration
          ),

          PageViewModel(
          image: Image.asset("assets/images/online.png"),
          title: "Pick up",
          body: "Pick up your Product and send it to your shop cart",         
          decoration: pageDecoration
          ),

          PageViewModel(
          image: Image.asset("assets/images/reviews.png"),
          title: "Reviews",
          body: "you can review product and more",          
          decoration: pageDecoration
          ),

          PageViewModel(
          image: Image.asset("assets/images/Delivery.png"),
          title: "Delivery ",
          body: "with our delivery services get it a minute",        
          decoration: pageDecoration
          ),

          PageViewModel(
          image: Image.asset("assets/images/chatting.png"),
          title: "Chating",
          body: "chat with store owner and more friends",
          decoration: pageDecoration
          ),

          
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          curve: Curves.easeIn,
          pages: getPages(),
          onDone: () { Navigator.pushNamed(context, WelcomeScreen.id);},
          done: Text(
            "Done",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
