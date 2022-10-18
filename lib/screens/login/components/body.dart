import 'package:flutter/material.dart';
import 'package:flutter_login/components/text_field_container.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/screens/login/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: 'NIK',
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: 'Password',
            icon: Icons.lock,
            onChanged: (value) {},
          )
        ],
      ),
    );
  }
}
