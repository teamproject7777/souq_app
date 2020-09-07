import 'package:souq_app/components/rounded_button.dart';
import 'package:souq_app/const/colors.dart';
import 'package:souq_app/screens/Login/login_screen.dart';
import 'package:souq_app/screens/Singup/signup_screen.dart';
import 'package:souq_app/screens/Welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
          child: Background(
             child: Padding(
               padding: const EdgeInsets.all(20.0),
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
            Text(
                "Souq",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            
            SizedBox(height: size.height * 0.03),

            SvgPicture.asset(
                "assets/svg/welcome.svg",
                height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03),
          
            RoundedButton(
                text: "Login",
               
                textColor: Colors.white,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    })
                    );
                },
                ),
                
                 RoundedButton(
                text: "SignUp",
                textColor: Colors.black,
                color: KPrimaryLightColor,
                press: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    })
                    );
                },
                ),
          ]),
             )),
    );
  }
}

