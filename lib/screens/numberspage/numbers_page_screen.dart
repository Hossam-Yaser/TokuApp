import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/colors.dart';
import 'package:toku_app/custom_assets/my_app_images.dart';
import 'package:toku_app/custom_assets/my_app_sound.dart';
import 'package:toku_app/screens/widgets/category_veiw_widget.dart';

class NumbersPageScreen extends StatelessWidget {
  const NumbersPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: MyAppColors.appBarColor,
      ),
      body: ListView.builder(
        itemCount: numbersInEnglish.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: CategoryVeiwWidget(
              containerColor: MyAppColors.numbersColor,
              imagePath: numbersImages[index],
              numberInJapanese: numbersInJapanese[index],
              numberInEnglish: numbersInEnglish[index],
              soundPath: numbersSounds[index],
            ),
          );
        },
      ),
    );
  }
}

List<String> numbersInJapanese = [
  "ichi",
  "ni",
  "san",
  "shi",
  "go",
  "roku",
  "nana",
  "hachi",
  "kyu",
  "ju",
];

// --------------------------------------------------
List<String> numbersInEnglish = [
  "One",
  "Two",
  "Three",
  "Four",
  "Five",
  "Six",
  "Seven",
  "Eight",
  "Nine",
  "Ten",
];
// --------------------------------------------------
List<String> numbersImages = [
  MyAppImages.numbersOne,
  MyAppImages.numbersTwo,
  MyAppImages.numbersThree,
  MyAppImages.numbersFour,
  MyAppImages.numbersFive,
  MyAppImages.numbersSix,
  MyAppImages.numbersSeven,
  MyAppImages.numbersEight,
  MyAppImages.numbersNine,
  MyAppImages.numbersTen,
];

// --------------------------------------------------
List<String> numbersSounds = [
  MyAppSound.numbersOneSound,
  MyAppSound.numbersTwoSound,
  MyAppSound.numbersThreeSound,
  MyAppSound.numbersFourSound,
  MyAppSound.numbersFiveSound,
  MyAppSound.numbersSixSound,
  MyAppSound.numbersSevenSound,
  MyAppSound.numbersEightSound,
  MyAppSound.numbersNineSound,
  MyAppSound.numbersTenSound,
];
