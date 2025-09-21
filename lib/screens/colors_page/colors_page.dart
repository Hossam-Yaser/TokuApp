import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/assetsupdate.dart';
import 'package:toku_app/custom_assets/colors.dart';

import 'package:toku_app/screens/widgets/category_veiw_widget.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: MyAppColors.appBarColor,
      ),
      body: ListView.builder(
        itemCount: colorsItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: CategoryVeiwWidget(
              containerColor: MyAppColors.colorsTapColor,
              imagePath: colorsItems[index].imagePath.toString(),
              numberInJapanese: colorsItems[index].imageDescriptionInJapanese,
              numberInEnglish: colorsItems[index].imageDescriptionInInglish,
              soundPath: colorsItems[index].soundPath,
            ),
          );
        },
      ),
    );
  }
}
