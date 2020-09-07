import 'package:souq_app/components/already_have_an_account_check.dart';
import 'package:souq_app/components/rounded_button.dart';
import 'package:souq_app/components/rounded_password_field.dart';
import 'package:souq_app/screens/Login/components/background.dart';
import 'package:souq_app/components/rounded_input_field.dart';
import 'package:souq_app/screens/Login/components/or_divider.dart';
import 'package:souq_app/screens/Singup/signup_screen.dart';
import 'package:souq_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/svg/login.svg",
              height: size.height * 0.20,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Login",
             press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    })
                    );
                },
            ),
            SizedBox(height: size.height * 0.02),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                Container(
                  // margin: EdgeInsets.all(20),
                  child: Text("Forget Password",
                   
                  style: TextStyle(color: Colors.black))
                )
              ],
            ),
            OrDivider(),
           
            AlreadyHaveAnAccountCheck(
              press: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    })
                );
              },
            ),

        
          ],
        ),
      ),
    );
  }
}

