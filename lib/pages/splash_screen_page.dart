import 'dart:async';
import 'package:dyvolt/main_page.dart';
import 'package:dyvolt/pages/login_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigasi ke halaman beranda menggunakan Timer
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Container(
              width: 220,
              height: 200,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Image.asset(
              'assets/images/dyvolt_logo_outline_splash_screen.png',
            ),
          ),
        ),
      ),
    );
  }
}
