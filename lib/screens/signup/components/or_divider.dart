import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          const Text(
            'OR',
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          buildDivider()
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
        child: Divider(
      height: 2,
      color: Color(0xFFD9D9D9),
    ));
  }
}
