import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      // set the container's background color to the secondaryColor and apply a border radius
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        // align the widgets to the start
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Storage Details", 
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          // add the chart
          Chart(),
          // add the storage info cards
          StorageInfoCard(
            svgSource: "assets/icons/Documents.svg",
            title: "Documents Files",
            amountOfFiles: "16.1GB",
            numOfFiles: 3971,
          ),
          StorageInfoCard(
            svgSource: "assets/icons/media.svg",
            title: "Media Files",
            amountOfFiles: "12.8GB",
            numOfFiles: 204,
          ),
          StorageInfoCard(
            svgSource: "assets/icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "5.4GB",
            numOfFiles: 1098,
          ),
          StorageInfoCard(
            svgSource: "assets/icons/unknown.svg",
            title: "Unknown Files",
            amountOfFiles: "1.1GB",
            numOfFiles: 391,
          ),
        ],
      ),
    );
  }
}