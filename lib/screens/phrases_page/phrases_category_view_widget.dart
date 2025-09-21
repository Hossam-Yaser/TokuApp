import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/colors.dart';
import 'package:audioplayers/audioplayers.dart';

class PhrasesCategoryViewWidget extends StatelessWidget {
  const PhrasesCategoryViewWidget({
    required this.phraseInJapanese,
    required this.phraseInEnglish,
    required this.soundPath,
    super.key,
  });

  final String phraseInJapanese;
  final String phraseInEnglish;
  final String soundPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),

        color: MyAppColors.phrasesColor,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    phraseInJapanese,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                    softWrap: true,
                  ),
                  Text(
                    phraseInEnglish,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),

            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(soundPath));
              },
              icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
