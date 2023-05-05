import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // wrap the chart in a SizedBox widget to give it a fixed height
    return SizedBox(
      height: 200.0, 
      // wrap the chart in a Stack widget to allow the chart to be displayed on top of the text
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              // remove the chart's border
              sectionsSpace: 0.0,
              // remove the chart's center space
              centerSpaceRadius: 70.0,
              // start the chart at a 90 degree offset
              startDegreeOffset: -90.0,
              // add the number of sections equal to the length of the pieChartSelectionData array
              sections: pieChartSelectionData,
            ),
          ),
          // add the text to the center of the chart
          Positioned.fill(
            child: Column(
              // align the widgets to the center
              mainAxisAlignment: MainAxisAlignment.center,
              // array contains the text to be displayed in the middle of the pie chart
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  "35.4", 
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white, 
                    fontWeight: FontWeight.w600,
                    height: 0.5,
                  ),
                ),
                const Text("of 128GB"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// create an array of PieChartSectionData objects
List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    // set the color of the section
    color: primaryColor,
    // set the value of the section
    value: 25.0,
    // remove the title from the section
    showTitle: false,
    // set the radius of the section
    radius: 25.0,
  ),
  PieChartSectionData(
    color: const Color(0xFF26e5FF),
    value: 20.0,
    showTitle: false,
    radius: 22.0,
  ),
  PieChartSectionData(
    color: const Color(0xFFFFCF26),
    value: 10.0,
    showTitle: false,
    radius: 19.0,
  ),
  PieChartSectionData(
    color: const Color(0xFFEE2727),
    value: 15.0,
    showTitle: false,
    radius: 16.0,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 25.0,
    showTitle: false,
    radius: 13.0,
  ),
];