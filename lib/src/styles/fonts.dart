import 'package:flutter/material.dart';
import 'package:holamundo/src/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle fontH2 (Color color){
  return GoogleFonts.poppins(
    color: color,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );
}

TextStyle fontCardLabel (Color color){
  return GoogleFonts.poppins(
    fontSize: 12,
    color: color,
      fontWeight:  FontWeight.w300
  );
}

TextStyle poppinsFont (Color color){
  return GoogleFonts.poppins(
    color: color,
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );
}


TextStyle fontText (Color color){
  return GoogleFonts.poppins(
    color: color,
    fontSize: 12,
  );
}