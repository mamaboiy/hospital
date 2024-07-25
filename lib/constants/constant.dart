import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

myStyle(double fs, [Color ?clr, FontWeight ?fw]){
  return GoogleFonts.nunito(
    fontSize:fs,
    color:clr,
    fontWeight:fw,
  );
}
Color primaryColor=Colors.blue;
Color secondaryColor=Colors.green;
Color thirdColor=Colors.orangeAccent;