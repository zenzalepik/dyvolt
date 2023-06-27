import 'dart:async';
import 'package:dyvolt/pages/login_page.dart';
import 'package:dyvolt/utils/colors.dart';
import 'package:dyvolt/utils/fonts.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigasi ke halaman beranda menggunakan Timer
    Timer(const Duration(milliseconds: 3500), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: Container(
          width: 360 - 32,
          height: 200 + 2 + 56 + 32,
          child: Column(
            children: [
              SizedBox(
                width: 220,
                height: 200,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image.asset(
                    'assets/images/dyvolt_logo_outline_splash_screen.png',
                  ),
                ),
              ),
              SizedBox(height: 56),
              SizedBox(
                  height: 32,
                  child: Text('Loading...', style: TextStyles.text12px500Dark)),
              SizedBox(
                height: 2,
                width: 360 - 32 - 64,
                child: RiveAnimation.asset(
                    'assets/animations/ani_loading_splash_screen.riv'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
