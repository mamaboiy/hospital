import 'package:doctor/constants/constant.dart';
import 'package:flutter/material.dart';

class PatientInfo extends StatelessWidget {
  const PatientInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyle(20, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: myStyle(20, secondaryColor, FontWeight.bold)),
                TextSpan(
                  text: "+",
                  style: myStyle(20, primaryColor, FontWeight.bold),
                ),
              ]),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 10),
              // margin: EdgeInsets.all(5),
              width: double.infinity,
              decoration: BoxDecoration(
                // color: Colors.blue.shade100,
                  // borderRadius: BorderRadius.circular(30),
                  // border: Border.all(color: primaryColor, width: 2)
              ),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        margin: EdgeInsets.all(2),
                        height: 200,
                        width: 200,
                        // margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue),
                            color: primaryColor,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage("assets/images/doctor1.png"),
                            ),
                        ),
                      ),
                      Icon(Icons.verified_sharp,color: secondaryColor,size: 40,),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Name: ",
                                style: myStyle(25, Colors.black, FontWeight.bold),
                              ),

                              Text(
                                " Kinlay Bhai",
                                style: myStyle(20, Colors.black, FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                "Disease: ",
                                style: myStyle(25, Colors.black, FontWeight.bold),
                              ),

                              Text(
                                " Kidney Disease",
                                style: myStyle(20, Colors.black, FontWeight.bold),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 15,bottom: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail_outline_outlined,
                                size: 30,
                                color: thirdColor,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'kinalybhiajan12@gmail.com',
                                      style: myStyle(20, null, FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.person_pin,
                                  size: 30,
                                  color: thirdColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Profile Details',
                                        style: myStyle(20, null,FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'view your information',
                                            style: myStyle(18, null, FontWeight.w500),
                                          ),
                                          Icon(Icons.arrow_forward_rounded),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.logout,
                                    size: 30,
                                    color: thirdColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'LogOut',
                                          style: myStyle(20, null, FontWeight.bold),
                                        ),
                                        Text(
                                          'last login : september 13,2000',
                                          style: myStyle(18, null, FontWeight.w500),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
