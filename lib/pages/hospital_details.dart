import 'package:doctor/constants/constant.dart';
import 'package:doctor/data/docs_data.dart';
import 'package:doctor/model_class/doctors_model.dart';
import 'package:flutter/material.dart';

class hospitalDetails extends StatelessWidget {
  HospitalModel hospitalModel;

  hospitalDetails({super.key, required this.hospitalModel});

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
                style: myStyle(20, secondaryColor, FontWeight.bold),
              ),
              TextSpan(
                text: "+",
              )
            ],
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              child: RichText(
                text: TextSpan(
                  style: myStyle(30, primaryColor, FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "${hospitalModel.hospitalname} ",
                    ),

                    TextSpan(
                      text: "Hospital",style: myStyle(25, secondaryColor, FontWeight.bold),
                    ),
                    TextSpan(
                      text: "+",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage('${hospitalModel.imgUrl}'),
                    fit: BoxFit.cover,
                  ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.pin_drop_outlined,color: thirdColor),
                          Text('${hospitalModel.location}',style: myStyle(20,secondaryColor,FontWeight.bold),),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.star_rate_rounded,color: thirdColor),
                          Text('${hospitalModel.rating}',style: myStyle(20,secondaryColor,FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${hospitalModel.detail}',style: myStyle(18, primaryColor, FontWeight.bold),),
                  Text('${hospitalModel.hospital_description}'),
                ],
              ),
            ),
            SizedBox(height: 30,),
        
            MaterialButton(
              color: primaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
              minWidth: MediaQuery.of(context).size.width*0.9,
              height:MediaQuery.of(context).size.height*0.08,
              onPressed: (){},
              child: Text("Prefered Hospital ",style: myStyle(24,Colors.white,FontWeight.bold),) ,
        
            ),
        
        
          ],
        ),
      ),
    );
  }
}
