import 'package:customui/Components/rounded_button.dart';
import 'package:customui/Screens/Login/Components/background.dart';
import 'package:customui/Screens/Login/Components/rounded_input_field.dart';
import 'package:customui/Screens/Login/Components/rounded_password_field.dart';
import 'package:customui/Screens/Login/Components/text_field_container.dart';
import 'package:customui/Screens/Signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constraints.dart';
import 'already_have_an_account_check.dart';
class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background( child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('LOGIN',style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor,fontSize:18)
        ),
        SizedBox(height: size.height*0.04,),
        SvgPicture.asset('assets/images/login_pic.svg',
        height: size.height*0.24,
        ),
        SizedBox(height: size.height*0.04,),
        RoundedInputField(
          hintText: 'Your Email',
          onChanged: (value){},
        ),
        RoundedPasswordField(
          onChanged: (value){},
        ),
        RoundedButton(
          text: 'LOGIN',
          press: (){},
        ),
        SizedBox(height: size.height*0.04,),
        AlreadyHaveAnAccountCheck(
          press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();}));
          },
        )
      ],
    ),);
  }
}
