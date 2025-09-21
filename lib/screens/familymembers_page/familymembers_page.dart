import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/colors.dart';
import 'package:toku_app/custom_assets/my_app_images.dart';
import 'package:toku_app/custom_assets/my_app_sound.dart';
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
        itemCount: familyMembersInEnglish.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 1.0),
            child: CategoryVeiwWidget(
              containerColor: MyAppColors.familyMemberColor,
              imagePath: familyMembersImages[index],
              numberInJapanese: familyMembersJapanese[index],
              numberInEnglish: familyMembersInEnglish[index],
              soundPath: familyMembersSounds[index],
            ),
          );
        },
      ),
    );
  }
}

//-------------------------------------------------------------------------
List<String> familyMembersInEnglish = [
  'Father',
  'Mother',
  'Son',
  'Daughter',
  'Older Brother',
  'Younger Brother',
  'Older Sister',
  'Younger Sister',
  'Grandmother',
  'Grandfather',
];

//-------------------------------------------------------------------------
List<String> familyMembersJapanese = [
  'Chichioya',
  'Hahaoya',
  'Musuko',
  'Musume',
  'Ani',
  'Otouto',
  'Ane',
  'Imouto',
  'Sobo',
  'Sofu',
];
//-------------------------------------------------------------------------
List<String> familyMembersImages = [
  MyAppImages.familyMembersFather,
  MyAppImages.familyMembersMother,
  MyAppImages.familyMembersSon,
  MyAppImages.familyMembersDaughter,
  MyAppImages.familyMembersOlderBrother,
  MyAppImages.familyMembersYoungerBrother,
  MyAppImages.familyMembersOlderSister,
  MyAppImages.familyMembersYoungerSister,
  MyAppImages.familyMembersGrandmother,
  MyAppImages.familyMembersGrandfather,
];

//-------------------------------------------------------------------------
List<String> familyMembersSounds = [
  MyAppSound.familyMemberSoundFather,
  MyAppSound.familyMemberSoundMother,
  MyAppSound.familyMemberSoundSon,
  MyAppSound.familyMemberSoundDaughter,
  MyAppSound.familyMemberSoundOlderBrother,
  MyAppSound.familyMemberSoundYoungerBrother,
  MyAppSound.familyMemberSoundOlderSister,
  MyAppSound.familyMemberSoundYoungerSister,
  MyAppSound.familyMemberSoundGrandMother,
  MyAppSound.familyMemberSoundGrandFather,
];
