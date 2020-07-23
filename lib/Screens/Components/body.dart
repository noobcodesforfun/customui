import 'package:customui/Components/rounded_button.dart';
import 'package:customui/Screens/Components/background.dart';
import 'package:customui/Screens/Login/login_screen.dart';
import 'package:customui/Screens/Signup/signup_screen.dart';
import 'package:customui/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
class Body extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
     Size size  = MediaQuery.of(context).size;
     return SingleChildScrollView(
       child: Background(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Text('WELCOME TO ONE \n STEP SERVICES',
            style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor,fontSize:18),
            textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height*0.013,
            ),
            SvgPicture.asset('assets/images/combined_carwash.svg',
              height:size.width*0.85,
            ),
          SizedBox(
            height: size.height*0.013,
          ),
            RoundedButton(
              text: 'LOGIN',
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));
              },
            ),
          RoundedButton(
            text: 'SIGN UP',
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();}));
            },
            color: kPrimaryLightColor,
            textColor: Colors.black
            ,
          )
        ],
    ),
    ),
     );
  }
}
