import 'package:souq_app/components/already_have_an_account_check.dart';
import 'package:souq_app/components/rounded_button.dart';
import 'package:souq_app/components/rounded_input_field.dart';
import 'package:souq_app/components/rounded_password_field.dart';
// ignore: unused_import
import 'package:souq_app/const/colors.dart';
import 'package:souq_app/screens/Login/login_screen.dart';
import 'package:souq_app/screens/Singup/components/background.dart';
import 'package:souq_app/screens/Singup/components/or_divider.dart';
import 'package:souq_app/screens/Singup/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SignUp",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/svg/signup.svg",
              height: size.height * 0.20,
            ),
            RoundedInputField(
              hintText: "Your Eamil",
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(
              text: "Signup",
              press: () {},
            ),
            SizedBox(height: size.height * 0.02),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ 
              SocalIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),

              SocalIcon(
                iconSrc: "assets/icons/google-plus.svg",
                press: () {},
              ),

              
            ],
           ),
          ],
        ),
      ),
    );
  }
}

