import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kksi/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        User? user = FirebaseAuth.instance.currentUser;

        if (user == null) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/get-started', (route) => false);
        } else if (user.email == 'budi@gmail.com') {
          Navigator.pushNamedAndRemoveUntil(
              context, '/mainGuru', (route) => false);
        } else if (user.email == 'yusuf@gmail.com') {
          Navigator.pushNamedAndRemoveUntil(
              context, '/main-ortu', (route) => false);
        } else {
          Navigator.pushNamedAndRemoveUntil(
              context, '/mainSiswa', (route) => false);
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Container(
          child: Image.asset(
            'assets/logo_splash.gif',
            width: 300,
          ),
        ),
      ),
    );
  }
}
