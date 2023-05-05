import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../models/my_files.dart';
import '../../../constants.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    super.key,
    required this.info,
  });

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        // align the text to the left
        crossAxisAlignment: CrossAxisAlignment.start,
        // add a main axis alignment to the column
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40.0,
                width: 40.0,
                // add a decoration to the container
                decoration: BoxDecoration(
                  color: info.color.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                // add an svg image
                child: SvgPicture.asset(
                  info.svgSource,
                  colorFilter: ColorFilter.mode(
                    info.color, 
                    BlendMode.srcIn,
                  ),
                ),
              ),
              // add a more_vert icon
              const Icon(
                Icons.more_vert, 
                color: Colors.white54,
              ),
            ],
          ),
          Text(
            info.title, 
            maxLines: 1, 
            overflow: TextOverflow.ellipsis,
          ),
          // add a ProgressLine that will show the user how much more room they have left in cloud storage
          ProgressLine(
            color: info.color,
            percentage: info.percentage,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                // use string interpolation to add the number of files
                "${info.numOfFiles} Files",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white70,
                ),
              ),
              Text(
                // use string interpolation to add the total storage
                info.totalStorage,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    required this.color, 
    required this.percentage,
  });

  // create final variables to use throughout the class
  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    // use a Stack to layer the two containers on top of each other
    return Stack(
      children: [
        Container(
          // set the width to the max width of the container
          width: double.infinity,
          height: 5.0,
          // add a decoration to the container
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        // use a LayoutBuilder to get the max width of the container
        LayoutBuilder(
          // use the constraints to set the width of the container
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage / 100),
            height: 5.0,
            // add a decoration to the container
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
        ),
      ],
    );
  }
}