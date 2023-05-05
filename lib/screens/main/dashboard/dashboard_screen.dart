import 'package:flutter/material.dart';

import '../../responsive.dart';
import '/screens/constants.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // wrap the entire screen in a SafeArea widget to avoid the UI from being blocked by the device's notch
    return SafeArea(
      // wrap the entire screen in a SingleChildScrollView widget to allow the screen to scroll when the keyboard is active
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      const MyFiles(),
                      const SizedBox(height: defaultPadding),
                      const RecentFiles(),
                      // if mobile, display the widgets in a column, else display the widgets in a row
                      if (Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))
                        const StorageDetails(),
                    ],
                  ),
                ),
                // if mobile, display a SizedBox widget, else display a StorageDetails widget
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                if (!Responsive.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}