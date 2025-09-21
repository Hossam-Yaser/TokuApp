import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/assetsupdate.dart';
import 'package:toku_app/custom_assets/colors.dart';

import 'package:toku_app/screens/widgets/category_veiw_widget.dart';

class FamilymembersPage extends StatelessWidget {
  const FamilymembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: MyAppColors.appBarColor,
      ),
      body: ListView.builder(
        itemCount: familyMembersItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: CategoryVeiwWidget(
              containerColor: MyAppColors.familyMemberColor,
              imagePath: familyMembersItems[index].imagePath.toString(),
              numberInJapanese:
                  familyMembersItems[index].imageDescriptionInJapanese,
              numberInEnglish:
                  familyMembersItems[index].imageDescriptionInInglish,
              soundPath: familyMembersItems[index].soundPath,
            ),
          );
        },
      ),
    );
  }
}
