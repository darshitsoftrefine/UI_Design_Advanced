import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tradly/Login_and_OTP_screens/login.dart';
import 'package:tradly/themes/themes.dart';

import 'onboarding/onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Onboarding())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: Center(
        child: Image.asset('assets/images/Group.png'),
      ),
    );
  }
}
