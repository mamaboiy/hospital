import 'package:doctor/constants/constant.dart';
import 'package:doctor/model_class/doctors_model.dart';
import 'package:flutter/material.dart';
class DoctorDetails extends StatelessWidget {
  DoctorModel doctorModel;
   DoctorDetails({super.key, required this.doctorModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ]),
          
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.teal,
          width: double.infinity,
          child: Column(children: [
            Hero(
              tag:"${doctorModel.name}" ,
                child: Image.asset("${doctorModel.imgUrl}"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${doctorModel.name}", style: myStyle(24, Colors.black, FontWeight.bold),),
                          Text("${doctorModel.speciality}", style: myStyle(16, Colors.black,)),
                        ],
                      ),
                      Text("\$${doctorModel.payment}",style: myStyle(28,secondaryColor,FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("About Doctor",style: myStyle(20,primaryColor,FontWeight.bold),),
                      Text("${doctorModel.aboutDoc}",style: myStyle(18, Colors.black,),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 4,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: MediaQuery.of(context).size.height *0.10,
                            width: MediaQuery.of(context).size.width *0.28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Patients", style: myStyle(18,primaryColor,FontWeight.bold),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.person,size: 24,color: thirdColor,),
                                    Text("${doctorModel.patient}+")
                                  ],
                                )
                              ],
                            ),
                          ),
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: MediaQuery.of(context).size.height *0.10,
                          width: MediaQuery.of(context).size.width *0.27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Experience", style: myStyle(18,primaryColor,FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_bag,size: 24,color: thirdColor,),
                                  Text(" ${doctorModel.experience}+")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: MediaQuery.of(context).size.height *0.10,
                          width: MediaQuery.of(context).size.width *0.27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rating", style: myStyle(18,primaryColor,FontWeight.bold),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star,size: 24,color: thirdColor,),
                                  Text("${doctorModel.rating}+")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Available",style: myStyle(20,primaryColor,FontWeight.bold),),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 80,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: doctorModel.appointmentDays.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return Card(
                            elevation: 4,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              height: MediaQuery.of(context).size.height *0.08,
                              width: MediaQuery.of(context).size.width *0.27,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${doctorModel.appointmentDays[index]}", style: myStyle(20,primaryColor,FontWeight.bold),),
                                  Text("${doctorModel.appointmentTimes[index]}", style: myStyle(16,secondaryColor,FontWeight.bold),),

                                ],
                              ),
                            ),
                          );
                        },
                      )
                  ),
                  SizedBox(height: 30,),
                  MaterialButton(
                    color: primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    minWidth: MediaQuery.of(context).size.width*0.8,
                      height:MediaQuery.of(context).size.height*0.09,
                      onPressed: (){},
                    child: Text("Make an Appointment ",style: myStyle(22,Colors.white,FontWeight.bold),) ,
                    
                  ),
        
        
                ],
              ),
            )
          ],
          ),
        ),
      )
    );
  }
}
