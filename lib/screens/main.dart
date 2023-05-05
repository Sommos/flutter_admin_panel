import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../screens/constants.dart';
import '../controllers/menu_app_controller.dart';
import 'main/main_screen.dart';

void main() {
  // run app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove debug banner
      debugShowCheckedModeBanner: false,
      title: "Flutter Admin Panel",
      // use ThemeData to keep theme consistent
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        // use GoogleFonts to keep font consistent
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
          ),
        ),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
        ],
        child: const MainScreen(),
      )
    );
  }
}