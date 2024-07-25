import 'package:doctor/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title:  RichText(
          text: TextSpan(
              style: myStyle(20, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                  text: "Time",
                  style: myStyle(20, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: "+",
                ),
              ]
          ),

        ),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Lottie.asset('assets/animation/animi.json'),
              ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 4,
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.blue
                ),
                child: Text('Call Ambulance',style: myStyle(20,secondaryColor,FontWeight.bold),),
              ),
            )

        ]
        ),
      ),
    );
  }
}
