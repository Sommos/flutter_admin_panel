import 'package:flutter/material.dart';

import '../../../../models/my_files.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // get the size of the screen
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files", 
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  // if mobile, divide defaultPadding by 2, else divide by 1
                  vertical: defaultPadding / (Responsive.isMobile(context) ? 2 : 1), 
                  horizontal: defaultPadding * 1.5,
                ),
              ),
              onPressed: () {}, 
              icon: const Icon(Icons.add), 
              label: const Text("Add New"),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          // if mobile, return FileInfoCardGridView with 2 columns, else return 4 columns
          mobile: FileInfoCardGridView(
            crossAxisCount: size.width < 650 ? 2 : 4,
            childAspectRatio: size.width < 650 ? 1.3 : 1.0,
          ),
          // if tablet, return FileInfoCardGridView with 4 columns, else return 4 columns
          tablet: const FileInfoCardGridView(),
          // if desktop, return FileInfoCardGridView with 4 columns, else return 4 columns
          desktop: FileInfoCardGridView(
            childAspectRatio: size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.4,
  });

  // crossAxisCount is the number of columns, childAspectRatio is the width of the column
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // disable scrolling
      physics: const NeverScrollableScrollPhysics(),
      // shrink wrap the grid view
      shrinkWrap: true,
      // set the number of columns
      itemCount: demoMyFiles.length,
      // set the grid view
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      // set the grid view items with an index that is cycled through
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
    );
  }
}