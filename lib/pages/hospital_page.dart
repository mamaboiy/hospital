import 'package:doctor/constants/constant.dart';
import 'package:doctor/data/docs_data.dart';
import 'package:doctor/model_class/doctors_model.dart';
import 'package:doctor/pages/hospital_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HospitalPage extends StatelessWidget {
  const HospitalPage({super.key});

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
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff7ae582).withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25),),
                  Icon(
                    Icons.search_outlined,
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text("Search Hospital,Bhutan",style: TextStyle(fontSize: 16,color: Colors.grey),)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ///names of hospital y axis
            SizedBox(
              height: 60,
              child:  ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: alltype.length,
                  itemBuilder: (context, index){
                    return Card(
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        child:Text('${alltype[index].hospitalname}',style: myStyle(18,primaryColor,FontWeight.bold),),
                      ),
                    );
                  }
              ),
            ),

            SizedBox(
              height: 20,
            ),

            ///Image slider
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: alltype.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 4,
                      child: Container(
                        height: 250,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('${alltype[index].imgUrl}'),
                          ),
                        ),
                      ),
                    );
                  }),
            ),

            SizedBox(height: 20,),

            ///column image which link to details page
            SizedBox(
              height: 800,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: alltype.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 4,
                      child: Container(
                        // margin: EdgeInsets.all( 5),
                        height: 130,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            InkWell(
                              onTap:(){
                                Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>hospitalDetails(hospitalModel: alltype[index])),);
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 160,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('${alltype[index].imgUrl}')),
                                ),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "${alltype[index].hospitalname}",
                                      style: myStyle(
                                          20, primaryColor, FontWeight.bold),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10,),

                                Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.pin_drop_outlined,color: thirdColor),
                                        Text('${alltype[index].location}',style: myStyle(16,secondaryColor,null),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star_outline_rounded,color: thirdColor,),
                                        Text('${alltype[index].rating}',style: myStyle(16,secondaryColor,null),),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text('${alltype[index].detail}',style: myStyle(16,primaryColor,FontWeight.bold),),
                                    Icon(Icons.arrow_forward_ios_sharp,size: 15,color: primaryColor,),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
