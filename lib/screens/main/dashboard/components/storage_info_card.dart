import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    super.key, 
    required this.title, 
    required this.svgSource, 
    required this.amountOfFiles, 
    required this.numOfFiles,
  });

  // create final variables to use throughout the class
  final String title;
  final String svgSource;
  final String amountOfFiles;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      // add a decoration to the container
      decoration: BoxDecoration(
        border: Border.all(
          width: 2, 
          color: primaryColor.withOpacity(0.15),
        ),
        // add a border radius to the container
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          // add an svg image
          SizedBox(
            height: 20.0, 
            width: 20.0, 
            child: SvgPicture.asset(svgSource),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                // align the text to the left
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title, 
                    // force text to appear on only 1 line
                    maxLines: 1, 
                    // add an overflow to the text
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    // use string interpolation to add the number of files
                    "$numOfFiles Files", 
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles),
        ],
      ),
    );
  }
}