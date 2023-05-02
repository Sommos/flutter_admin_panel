import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.0, 
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0.0,
              centerSpaceRadius: 70.0,
              startDegreeOffset: -90.0,
              sections: pieChartSelectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    color: primaryColor,
    value: 25.0,
    showTitle: false,
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