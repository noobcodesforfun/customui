import 'package:customui/Components/rounded_button.dart';
import 'package:customui/Screens/Login/Components/already_have_an_account_check.dart';
import 'package:customui/Screens/Login/Components/rounded_input_field.dart';
import 'package:customui/Screens/Login/Components/rounded_password_field.dart';
import 'package:customui/Screens/Login/login_screen.dart';
import 'package:customui/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../signup_screen.dart';
import 'background.dart';
import 'or_divider.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('SIGN UP',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: kPrimaryColor
          ),
          ),
          SizedBox(height: size.height*0.03),
          SvgPicture.asset('assets/images/carwash-signup.svg',
            height: size.height * 0.20,
          ),
          RoundedInputField(
            hintText: "Your Email",
          ),
          RoundedPasswordField(
            onChanged: (value){},
          ),
          RoundedButton(
            text: "SIGN UP",
            press: (){},
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));
            },
          ),
          orDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: (){},
              ),
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                press: (){},
              ),
              SocialIcon(
                iconSrc: "assets/icons/google-plus.svg",
                press: (){},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocialIcon({
    Key key, this.iconSrc, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: kPrimaryLightColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconSrc,
          color: kPrimaryColor,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}

