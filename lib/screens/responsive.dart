import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  // assign the widget values to the following variables
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  // check if the pixel count matches traditional mobile devices
  static bool isMobile(BuildContext context) =>
    MediaQuery.of(context).size.width < 850;

  // check if the pixel count matches traditional tablet devices
  static bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.width < 1100 &&
    MediaQuery.of(context).size.width >= 850;

  // check if the pixel count matches traditional desktop devices  
  static bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1100;
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // if 1100 pixels wide, return desktop value
    if(size.width >= 1100) {
      return desktop;
    // else if size is greater, or equal to 850 pixels wide, return tablet value
    } else if(size.width >= 850) {
      return tablet;
    // else return mobile value
    } else {
      return mobile;
    }
  }
}