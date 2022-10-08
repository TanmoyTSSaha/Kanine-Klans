import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanine_klans/home/home.dart';
import 'package:kanine_klans/home/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kanine Klans',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.white),
      ),
      home: const Screens(),
    );
  }
}
