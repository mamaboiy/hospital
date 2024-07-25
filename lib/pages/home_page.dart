import 'package:doctor/constants/constant.dart';
import 'package:doctor/data/docs_data.dart';
import 'package:doctor/pages/ambulancer.dart';
import 'package:doctor/pages/covid_19page.dart';
import 'package:doctor/pages/doctor_details.dart';
import 'package:doctor/pages/hospital_page.dart';
import 'package:doctor/pages/madicineStore.dart';
import 'package:doctor/pages/medicinePage.dart';
import 'package:doctor/pages/profile_page.dart';
import 'package:flutter/material.dart';

class doctor extends StatelessWidget {
  const doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    RichText(
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
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>PatientInfo()));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blue),
                            image: DecorationImage(
                                image: AssetImage("assets/images/doctor1.png"),
                            ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.38,
                        width: MediaQuery.of(context).size.width * 0.47,
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomRight: Radius.circular(30),

                          ),
                          image: DecorationImage(
                              image: AssetImage("assets/images/doctors.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.47,
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stay Healthy!",
                              style: myStyle(25, Colors.black, FontWeight.bold),
                              maxLines: 1,
                            ),
                            Text(
                              "Stay Safe!",
                              style: myStyle(22, Colors.black, FontWeight.bold),
                              maxLines: 1,
                            ),
                            Text(
                              "We provide good services to our patients. We are open 24/7. Do contact us any time you need.",
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.video_call,
                                  color: primaryColor,
                                  size: 35,
                                ),
                                Text(
                                  "Meet Online",
                                  style: myStyle(
                                      18, secondaryColor, FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Services",
                      style: myStyle(25, primaryColor, FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: myStyle(
                        18,
                        Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                /// Animated Icons
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Service()));
                          },
                          child: Card(
                            elevation: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: MediaQuery.of(context).size.height *0.14,
                              width: MediaQuery.of(context).size.width *0.24,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/icons/ambulance.gif",width:60,),
                                  Text("Ambulances"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>covidPage()));
                          },
                          child: Card(
                            elevation: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: MediaQuery.of(context).size.height *0.14,
                              width: MediaQuery.of(context).size.width *0.24,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/icons/virus.gif",width:60),
                                  Text("Covid-19"),
                                ],
                              ),
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HospitalPage()));
                          },
                          child: Card(
                            elevation: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: MediaQuery.of(context).size.height *0.14,
                              width: MediaQuery.of(context).size.width *0.24,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/icons/hospital.gif",width:60),
                                  Text("Hospitals"),
                                ],
                              ),
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MadicinePage()));
                          },
                          child: Card(
                            elevation: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: MediaQuery.of(context).size.height *0.14,
                              width: MediaQuery.of(context).size.width *0.24,
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/icons/medicine.gif",width:60),
                                  Text("Medicines"),
                                ],
                              ),
                            ),
                          ),
                        ),


                      ],
                    ),
                 ),

                SizedBox(
                  height: 20,
                ),

                /// Text of GridView
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated Doctors",
                      style: myStyle(25, primaryColor, FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: myStyle(
                        18,
                        Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                /// Doctor GridView
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allDocs.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap:(){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>DoctorDetails(doctorModel: allDocs[index],)),
                        );
                      },
                      child: Card(
                        elevation: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white70,
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Hero(
                                tag: "${allDocs[index].name}",
                                child: CircleAvatar(
                                  maxRadius: 50,
                                  backgroundImage:
                                      AssetImage("${allDocs[index].imgUrl}"),
                                ),
                              ),
                              Text(
                                "${allDocs[index].name}",
                                style: myStyle(22, Colors.black, FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "${allDocs[index].speciality}",
                                style: myStyle(
                                  16,
                                  Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Text("${allDocs[index].rating}"),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
