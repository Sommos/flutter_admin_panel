import 'package:flutter/material.dart';

import '../screens/constants.dart';

class CloudStorageInfo {
  final String svgSource;
  final String title;
  final String totalStorage;
  final int numOfFiles;
  final int percentage;
  final Color color;

  const CloudStorageInfo({
    required this.svgSource,
    required this.title,
    required this.totalStorage,
    required this.numOfFiles,
    required this.percentage,
    required this.color,
  });
}

List demoMyFiles = const [
  CloudStorageInfo(
    title: "Documents",
    numOfFiles: 3971,
    svgSource: "assets/icons/Documents.svg",
    totalStorage: "16.0GB",
    color: primaryColor,
    percentage: 35,
  ),
CloudStorageInfo(
    title: "Google Drive",
    numOfFiles: 204,
    svgSource: "assets/icons/google_drive.svg",
    totalStorage: "9.7GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    title: "OneDrive",
    numOfFiles: 1098,
    svgSource: "assets/icons/one_drive.svg",
    totalStorage: "6.1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    title: "Drop Box",
    numOfFiles: 391,
    svgSource: "assets/icons/drop_box.svg",
    totalStorage: "3.6GB",
    color: Color(0xFF007EE5),
    percentage: 70,
  ),
];