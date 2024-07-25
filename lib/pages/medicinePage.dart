import 'package:doctor/constants/constant.dart';
import 'package:doctor/data/docs_data.dart';
import 'package:doctor/pages/madicineStore.dart';
import 'package:flutter/material.dart';

class MadicinePage extends StatelessWidget {
  const MadicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        centerTitle: true,
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
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff7ae582).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 25),),
                    Icon(
                      Icons.search_outlined,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text("Search Best,Pharmacy",style: TextStyle(fontSize: 16,color: Colors.grey),)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Medical Shops",
                    style: myStyle(20, primaryColor, FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: myStyle(20, Colors.black, FontWeight.bold),
                  ),

                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allShops.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder) =>MadicineStore(medicine:allMedicine[index]))
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Color(0xffd7e3fc),
                          elevation: 2,
                          child: Column(
                            children: [
                              Card(
                                elevation: 4,
                                margin: EdgeInsets.only( bottom: 5),
                                child: Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "${allShops[index].shopUrl}"),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                margin: EdgeInsets.all(5),
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.home_rounded,color: primaryColor,),
                                            Text(
                                              " ${allShops[index].shopName}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, fontSize: 18),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Icon(Icons.pin_drop_rounded,color: thirdColor,),
                                            Text(
                                              " ${allShops[index].location}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "${allShops[index].rating} ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, fontSize: 16),
                                            ),
                                            Icon(Icons.star_rate_rounded,color: thirdColor,),

                                          ],
                                        ),
                                        SizedBox(height: 5,),
                                        Row(
                                          children: [
                                            Icon(Icons.phone_forwarded_rounded,color: secondaryColor,),
                                            Text(
                                              " ${allShops[index].contactNo}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold, fontSize: 16),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
