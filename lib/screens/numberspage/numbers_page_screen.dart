import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/assetsupdate.dart';
import 'package:toku_app/custom_assets/colors.dart';
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
        itemCount: numbersItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 1),
            child: CategoryVeiwWidget(
              containerColor: MyAppColors.numbersColor,
              imagePath: numbersItems[index].imagePath.toString(),
              numberInJapanese: numbersItems[index].imageDescriptionInJapanese,
              numberInEnglish: numbersItems[index].imageDescriptionInInglish,
              soundPath: numbersItems[index].soundPath,
            ),
          );
        },
      ),
    );
  }
}
