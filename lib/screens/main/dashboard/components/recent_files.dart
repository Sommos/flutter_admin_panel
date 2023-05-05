import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '/models/recent_file.dart';
import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      // add a decoration to the container
      decoration: const BoxDecoration(
        color: secondaryColor, 
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Column(
        // align the widgets to the start
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files", 
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            // set the height of the table to 1.0 so that it takes up the entire width of the container
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0.0,
              columnSpacing: defaultPadding,
              // array of data columns that will be used to create the table titles
              columns: const [
                DataColumn(
                  label: Text("File Name"),
                ),
                DataColumn(
                  label: Text("Date"),
                ),
                DataColumn(
                  label: Text("Size"),
                ),
              ], 
              // array of data rows that will be used to create the table rows
              rows: List.generate(
                demoRecentFiles.length, 
                (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    // return a data row widget
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              // add an svg picture
              SvgPicture.asset(
                fileInfo.icon,
                height: 30.0,
                width: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                // add a text widget that uses the title of the fileInfo
                child: Text(fileInfo.title),
              ),
            ],
          ),
        ),
        // add a text widget that uses the date of the fileInfo
        DataCell(Text(fileInfo.date)),
        DataCell(Text(fileInfo.size)),
      ],
    );
  }
}