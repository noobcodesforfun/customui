import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child, this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
        Positioned(
        top: 0,
        left: 0,
        child: Image.asset('assets/images/login_signin_up.png'),
        width: size.width * 0.3,
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Image.asset('assets/images/side_down_left.png'),
        width: size.width * 0.27,
      ),
          child,
      ],
    ),
    );
  }
}