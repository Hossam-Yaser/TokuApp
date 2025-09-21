import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/colors.dart';
import 'package:toku_app/screens/colors_page/colors_page.dart';
import 'package:toku_app/screens/familymembers_page/familymembers_page.dart';
import 'package:toku_app/screens/phrases_page/phrases_page.dart';

import 'package:toku_app/screens/widgets/custom_list_member.dart';
import 'package:toku_app/screens/numberspage/numbers_page_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppColors.mainAppColor,
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: MyAppColors.appBarColor,
      ),
      body: Column(
        children: [
          CustomListMember(
            title: "Numbers",
            containerColor: MyAppColors.numbersColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPageScreen();
                  },
                ),
              );
            },
          ),
          CustomListMember(
            title: "Family Members",
            containerColor: MyAppColors.familyMemberColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilymembersPage();
                  },
                ),
              );
            },
          ),
          CustomListMember(
            title: "Colors",
            containerColor: MyAppColors.colorsTapColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            },
          ),
          CustomListMember(
            title: "Phrases",
            containerColor: MyAppColors.phrasesColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
