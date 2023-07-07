import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kiki_pay/theme.dart';
import 'package:kiki_pay/ui/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const OnBoardingPage()
          )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'assets/images/logo_light.png',
            width: 253,
            height: 50,
          ),
        )
      )
    );
  }
}
