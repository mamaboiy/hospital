import 'package:doctor/constants/constant.dart';
import 'package:doctor/data/docs_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class MadicineStore extends StatelessWidget {
  List medicine=[];
   MadicineStore({super.key, required this.medicine});

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
        child: Column(
          children: [
            Container(
              height: 250,
              // width: MediaQuery.of(context).size.width*1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                color: Colors.teal,
              ),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                    padding: EdgeInsets.all( 10),
                    width: MediaQuery.of(context).size.width*0.47,
                    child: Column(
                      children: [
                        Text('An Affordable Health Solution Prescription for You!',style: myStyle(25,Colors.white,FontWeight.bold),),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.48,
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(image: AssetImage('assets/images/medicine3.png'),
                    //     fit: BoxFit.cover,
                    //   ),
                    //
                    // ),
                    child: Lottie.asset('assets/animation/shopping.json',),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Medicine',style: myStyle(25,primaryColor,FontWeight.bold),),

                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                          child: Icon(Icons.add_shopping_cart,color: secondaryColor,size: 40,),
                      ),
                      Text('2',style: TextStyle(fontSize: 15,color: Colors.orange,fontWeight: FontWeight.bold),),

                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            ListView.builder(
              padding: EdgeInsets.all(10),
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: medicine.length,
                ///for gridview
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     crossAxisSpacing: 10,
                //    mainAxisSpacing: 20,
                // ),
                itemBuilder: (context, index){
                return Card(
                  elevation: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 250,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xffd7e3fc),
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                    image: AssetImage('${medicine[index].imgUrl}'),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('${medicine[index].Productname}',style: myStyle(20,secondaryColor,FontWeight.bold),),
                                Text('\$${medicine[index].price}',style: myStyle(20,secondaryColor,FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Card(
                              elevation: 4,
                              child: Container(
                                padding: EdgeInsets.all(5),
                                alignment: Alignment.center,
                                height: 50,
                                width: 300,
                                decoration: BoxDecoration(
                                color: secondaryColor,
                                  borderRadius: BorderRadiusDirectional.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Text('Add To Card',style: myStyle(20,Colors.white,FontWeight.bold),),
                                  Icon(Icons.shopping_bag,color: Colors.white,size: 30,),
                                ],),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
                }
            )


          ],
        ),
      ),
    );
  }
}
