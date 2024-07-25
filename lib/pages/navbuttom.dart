import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:doctor/data/docs_data.dart';
import 'package:doctor/pages/covid_19page.dart';
import 'package:doctor/pages/doctor_details.dart';
import 'package:doctor/pages/home_page.dart';
import 'package:flutter/material.dart';

class buttomnavbar extends StatefulWidget {
  const buttomnavbar({super.key});

  @override
  State<buttomnavbar> createState() => _buttomnavbarState();
}

class _buttomnavbarState extends State<buttomnavbar> {
  List list = [
    doctor(),
    DoctorDetails(doctorModel: allDocs[0]),
    covidPage(),
  ];
  // List<BottomNavigationBarItem> allItems = [
  //   BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Home"),
  //   BottomNavigationBarItem(icon: Icon(Icons.category), label: "Details"),
  //   BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
  //   BottomNavigationBarItem(icon: Icon(Icons.search), label: "virus"),
  // ];
  List<Icon>allItems=[
    Icon(Icons.home),
    Icon(Icons.details),
    Icon(Icons.search_rounded),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          }
          );
        },
        items: allItems,
      ),


      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.blue,
      //   backgroundColor: Colors.blue.shade50,
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   currentIndex: _currentIndex,
      //   onTap: (int index) {
      //     setState(() {
      //       _currentIndex = index;
      //     }
      //     );
      //   },
      //   items: allItems,
      // ),
    );
  }
}
