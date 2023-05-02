import 'package:flutter/material.dart';

import 'components/side_menu.dart';
import 'dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              // default flex = 1, therefore this takes 16.6% of the screen
              child: SideMenu(),
            ),
            Expanded(
              // takes the remaining 83.3% of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}