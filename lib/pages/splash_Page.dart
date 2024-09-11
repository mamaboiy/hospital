import 'dart:async';
import 'package:doctor/pages/home_page.dart';
import 'package:doctor/pages/navbuttom.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (builder) => buttomnavbar()),
                (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Lottie.asset(height: 100,width: 100,'assets/animation/HL.json'),
              Lottie.asset(height: 100,width: 100,'assets/animation/loader.json'),
              SizedBox(height: 10,),
              // Lottie.asset(height: 100,width: 100,'assets/animation/Health.json'),
            ],
          ),
        ),
      ),
    );
  }
}
