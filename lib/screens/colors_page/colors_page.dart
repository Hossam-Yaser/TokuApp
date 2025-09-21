import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/colors.dart';
import 'package:toku_app/custom_assets/my_app_images.dart';
import 'package:toku_app/custom_assets/my_app_sound.dart';
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
        itemCount: colorsInEnglish.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: CategoryVeiwWidget(
              containerColor: MyAppColors.colorsTapColor,
              imagePath: colorsImages[index],
              numberInJapanese: colorsJapanese[index],
              numberInEnglish: colorsInEnglish[index],
              soundPath: colorsSounds[index],
            ),
          );
        },
      ),
    );
  }
}

//-------------------------------------------------------------------------
List<String> colorsInEnglish = [
  'Red',
  'Green',
  'Brown',
  'Gray',
  'Black',
  'White',
  'Dusty Yellow',
  'Yellow',
];
//-------------------------------------------------------------------------
List<String> colorsJapanese = [
  'Aka',
  'Midori',
  'Chairo',
  'Haiiro',
  'Kuro',
  'Shiro',
  'Kasshoku',
  'Kiiro',
];
//-------------------------------------------------------------------------
List<String> colorsImages = [
  MyAppImages.colorsRed,
  MyAppImages.colorsGreen,
  MyAppImages.colorsBrown,
  MyAppImages.colorsGray,
  MyAppImages.colorsBlack,
  MyAppImages.colorsWhite,
  MyAppImages.colorsDustyYellow,
  MyAppImages.colorsYellow,
];
//-------------------------------------------------------------------------
List<String> colorsSounds = [
  MyAppSound.colorsRedSound,
  MyAppSound.colorsGreenSound,
  MyAppSound.colorsBrownSound,
  MyAppSound.colorsGraySound,
  MyAppSound.colorsBlackSound,
  MyAppSound.colorsWhiteSound,
  MyAppSound.colorsDustyYellowSound,
  MyAppSound.colorsYellowSound,
];
