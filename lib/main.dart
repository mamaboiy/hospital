import 'package:doctor/pages/caruosel_page.dart';
import 'package:doctor/pages/covid_19page.dart';
import 'package:doctor/pages/home_page.dart';
import 'package:doctor/pages/navbuttom.dart';
import 'package:doctor/pages/splash_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  doctor(),
    );
  }
}


