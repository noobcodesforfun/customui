import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(child: Image.asset("assets/images/side_up.png"),
            top: 0,
            left: 0,
            width: size.width*0.3,
          ),
          Positioned(child: Image.asset("assets/images/side_down.png"),
            bottom: 0,
            left: 0,
          ),
          child,
        ],
      ),
    );
  }
}