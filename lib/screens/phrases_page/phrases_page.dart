import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/colors.dart';
import 'package:toku_app/custom_assets/my_app_sound.dart';
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
        itemCount: phrasesInEnglish.length,
        itemBuilder: (context, index) {
          return PhrasesCategoryViewWidget(
            phraseInJapanese: phrasesInJapanese[index],
            phraseInEnglish: phrasesInEnglish[index],
            soundPath: phrasesSoundPaths[index],
          );
        },
      ),
    );
  }
}

//--------------------------------------------------------------------------
List<String> phrasesInEnglish = [
  "Are you coming?",
  "Yes, I'm coming.",
  "What is your name?",
  "How are you feeling?",
  "Where are you going?",
  "Don't forget to subscribe.",
  "Programming is easy.",
  "I love anime.",
  "I love programming.",
];
//--------------------------------------------------------------------------
List<String> phrasesInJapanese = [
  "Kimasu ka?",
  "Hai, kimasu.",
  "O-namae wa nan desu ka?",
  "Go kibun wa ikagadesu ka?",
  "Doko ni ikimasu ka?",
  "Kōdoku suru koto o wasurenaide kudasai.",
  "Puroguramingu wa kantan desu.",
  "Anime ga daisuki desu.",
  "Puroguramingu ga daisuki desu.",
];
//--------------------------------------------------------------------------
List<String> phrasesSoundPaths = [
  MyAppSound.phrasesAreYouComingSound,
  MyAppSound.phrasesYesImComingSound,
  MyAppSound.phrasesWhatIsYourNameSound,
  MyAppSound.phrasesHowAreYouFeelingSound,
  MyAppSound.phrasesWhereAreYouGoingSound,
  MyAppSound.phrasesDontForgetToSubscribeSound,
  MyAppSound.phrasesProgrammingIsEasySound,
  MyAppSound.phrasesILoveAnimeSound,
  MyAppSound.phrasesILoveProgrammingSound,
];
