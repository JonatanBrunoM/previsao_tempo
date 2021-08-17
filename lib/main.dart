import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:previsao_tempo/screens/home/home.dart';
import 'package:previsao_tempo/style.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Previsão do Tempo",
      home: Home(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: grayTheme,
        textTheme: TextTheme(
          headline1: GoogleFonts.dosis(
            fontSize: 140,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          headline6: GoogleFonts.dosis(
            fontSize: 20,
            color: Colors.white,
          ),
          subtitle1: GoogleFonts.dosis(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          subtitle2: GoogleFonts.dosis(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: GoogleFonts.dosis(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          bodyText2: GoogleFonts.dosis(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
          caption: GoogleFonts.dosis(
            fontSize: 8,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
