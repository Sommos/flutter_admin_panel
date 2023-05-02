import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/logo.png"),
            ),
            DrawerListTile(
              title: "Dashboard", 
              svgScource: "assets/icons/menu_dashbord.svg", 
              press: (){},
            ),
            DrawerListTile(
              title: "Transaction",
              svgScource: "assets/icons/menu_tran.svg", 
              press: (){},
            ),
            DrawerListTile(
              title: "Task",
              svgScource: "assets/icons/menu_task.svg", 
              press: (){},
            ),
            DrawerListTile(
              title: "Documents",
              svgScource: "assets/icons/menu_doc.svg", 
              press: (){},
            ),
            DrawerListTile(
              title: "Store",
              svgScource: "assets/icons/menu_store.svg", 
              press: (){},
            ),
            DrawerListTile(
              title: "Notification",
              svgScource: "assets/icons/menu_notification.svg", 
              press: (){},
            ),
            DrawerListTile(
              title: "Profile",
              svgScource: "assets/icons/menu_profile.svg", 
              press: (){},
            ),
            DrawerListTile(
              title: "Settings",
              svgScource: "assets/icons/menu_setting.svg", 
              press: (){},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key, 
    required this.title, 
    required this.svgScource, 
    required this.press,
  });

  final String title;
  final String svgScource;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgScource,
        height: 16,
        colorFilter: const ColorFilter.mode(
          Colors.white54, 
          BlendMode.srcIn,
        ),
      ), 
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}