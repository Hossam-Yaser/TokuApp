import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/assetsupdate.dart';
import 'package:toku_app/custom_assets/colors.dart';
import 'package:toku_app/screens/phrases_page/phrases_category_view_widget.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: MyAppColors.appBarColor,
      ),
      body: ListView.builder(
        itemCount: phrasesItems.length,
        itemBuilder: (context, index) {
          return PhrasesCategoryViewWidget(
            phraseInJapanese: phrasesItems[index].imageDescriptionInJapanese,
            phraseInEnglish: phrasesItems[index].imageDescriptionInInglish,
            soundPath: phrasesItems[index].soundPath,
          );
        },
      ),
    );
  }
}
