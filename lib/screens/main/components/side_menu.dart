import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // add a drawer to the scaffold
    return Drawer(
      // add a container to the drawer
      child: SingleChildScrollView(
        child: Column(
          // array of drawer headers that include different images for the side menu
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

// create a drawer list tile widget
class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key, 
    required this.title, 
    required this.svgScource, 
    required this.press,
  });

  // add final variables to be used in this widget
  final String title;
  final String svgScource;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    // add a list tile to the drawer
    return ListTile(
      onTap: press,
      // add a horizontal title gap
      horizontalTitleGap: 0.0,
      // add a leading widget to the list tile
      leading: SvgPicture.asset(
        svgScource,
        height: 16.0,
        // add a color filter to the svg image
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