import 'package:souq_app/const/colors.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key, 
    this.login = true, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
         login ? "Create a New Account  Here " : "Already have an account ? ",
          style: TextStyle(color: KPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
           login ? "Sign Up" : "Login",
            style: TextStyle(
              color: KLinkColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
