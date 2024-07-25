import 'package:doctor/pages/hospital_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constants/constant.dart';

class covidPage extends StatelessWidget {
  const covidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  style: myStyle(20, secondaryColor, FontWeight.bold),
                ),
                TextSpan(
                  text: "+",
                ),
              ]),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/covid.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(20),
                    bottomEnd: Radius.circular(20),
                  ),
                ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      // color: primaryColor,
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Report On Covid-',
                            style: myStyle(20, primaryColor, FontWeight.bold),
                          ),
                          Text(
                            '19',
                            style: myStyle(20, secondaryColor, FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "In March 2020, Bhutan swiftly contained its first COVID-19 case, though risks persisted due to borders with India and China. With limited health workers for 760,000 people, rapid virus spread could overwhelm the system. However, years of WHO-supported preparedness enabled an effective response, resulting in 2660 cases and four deaths by 2021."),
                    ],
                  ),
                )
              ],
            ),

            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          style: myStyle(20, primaryColor, FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "Are you covid-",
                            ),
                            TextSpan(
                              text: "19",
                              style: myStyle(20, secondaryColor, FontWeight.bold),
                            ),
                            TextSpan(
                              text: " patient?",
                            ),
                          ]),
                    ),

                    SizedBox(height: 8),
                    Text(
                      'If you think you have covid symptoms, please press alert button or go to nearest covid hospital',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 16),
                    Container(
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 150,
                            child: Lottie.asset('assets/animation/symptom.json'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HospitalPage()));
                            },
                            child: Text('Emergency alert',style: myStyle(20,secondaryColor,FontWeight.bold),),
                          ),

                        ],
                      ),
                    ),

                  ]
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              // width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/covidbanner.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 65,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: thirdColor.withOpacity(0.8),
                ),
                child: Column(
                  children: [
                    Text(
                      'Static Information',
                      style: myStyle(22, Colors.white, FontWeight.bold),
                    ),
                    Text(
                      'About Bhutan',
                      style: myStyle(22, Colors.white, FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Total +ve Case",
                          style: myStyle(20, primaryColor, FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "62697",
                              style:
                                  myStyle(19, secondaryColor, FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Total Death",
                            style: myStyle(20, primaryColor, FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                " 21",
                                style: myStyle(
                                    19, secondaryColor, FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total Recovered",
                          style: myStyle(20, primaryColor, FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("61564",
                                style: myStyle(
                                    19, secondaryColor, FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}
