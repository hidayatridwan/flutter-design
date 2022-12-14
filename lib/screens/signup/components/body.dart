import 'package:flutter/material.dart';
import 'package:flutter_login/components/already_have_an_account_check.dart';
import 'package:flutter_login/components/rounded_button.dart';
import 'package:flutter_login/components/rounded_input_field.dart';
import 'package:flutter_login/components/rounded_password_field.dart';
import 'package:flutter_login/screens/login/login_screen.dart';
import 'package:flutter_login/screens/signup/components/background.dart';
import 'package:flutter_login/screens/signup/components/or_divider.dart';
import 'package:flutter_login/screens/signup/components/social_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'SIGN UP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: 'NIK',
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: 'SIGN UP',
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ));
            },
          ),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconSrc: 'assets/icons/facebook.svg',
                press: () {},
              ),
              SocialIcon(
                iconSrc: 'assets/icons/twitter.svg',
                press: () {},
              ),
              SocialIcon(
                iconSrc: 'assets/icons/google-plus.svg',
                press: () {},
              ),
            ],
          )
        ],
      ),
    ));
  }
}
