import 'package:flutter/material.dart';
import 'package:toku_app/custom_assets/colors.dart';
import 'package:audioplayers/audioplayers.dart';

class CategoryVeiwWidget extends StatelessWidget {
  const CategoryVeiwWidget({
    required this.containerColor,
    required this.imagePath,
    required this.numberInJapanese,
    required this.numberInEnglish,
    required this.soundPath,
    super.key,
  });
  final String imagePath;
  final String numberInJapanese;
  final String numberInEnglish;
  final String soundPath;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 100,

      color: containerColor,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Container(
            color: MyAppColors.mainAppColor,
            child: Image.asset(imagePath),
          ),

          Container(
            padding: EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  numberInJapanese,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  numberInEnglish,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(soundPath));
            },
            icon: Icon(Icons.play_arrow, color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
