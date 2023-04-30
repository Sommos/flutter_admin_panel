import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              // default flex = 1, therefore this takes 16.6% of the screen
              child: Column(
                children: [
                  DrawerHeader(
                    child: Image.asset("assets/images/logo.png"),
                  )
                ],
              ),
            ),
            Expanded(
              // takes the remaining 83.3% of the screen
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}