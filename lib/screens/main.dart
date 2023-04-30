import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:admin_panel/screens/constants.dart';
import 'package:admin_panel/screens/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Admin Panel",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
          ),
        ),
        canvasColor: secondaryColor,
      ),
      home: MainScreen(),
    );
  }
}