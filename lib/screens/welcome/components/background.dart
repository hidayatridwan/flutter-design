import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            width: size.width * 0.3,
            child: Image.asset('assets/images/main_top.png'),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              width: size.width * 0.2,
              child: Image.asset('assets/images/main_bottom.png')),
          child
        ],
      ),
    );
  }
}