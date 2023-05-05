import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/menu_app_controller.dart';
import '../responsive.dart';
import 'components/side_menu.dart';
import 'dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // automatically close the drawer when the screen size changes from mobile to desktop
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if(Responsive.isDesktop(context) && context.read<MenuAppController>().getScaffoldKey.currentState!.isDrawerOpen) {
        Navigator.pop(context);
      }
    });
    return Scaffold(
      key: context.read<MenuAppController>().getScaffoldKey,  
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context)) 
              const Expanded(
                // default flex = 1, therefore this takes 16.6% of the screen
                child: SideMenu(),
              ),
            const Expanded(
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