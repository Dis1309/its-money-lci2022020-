import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:money_money_money/constants.dart';

class TopCardContent extends StatelessWidget {
  final double topPadding;
  final String imagePath;
  final String title;
  const TopCardContent({
    Key? key, required this.topPadding, required this.imagePath, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: topPadding),
          child: Image(image: AssetImage(imagePath)),
        ),
        const SizedBox(height: 15.0,),
        BorderedText(
          strokeColor: moneyColor,
          strokeWidth: 2.0,
          child: Text(
            title,
            style: const TextStyle(
              // color: Colors.black.withOpacity(0.70),
              fontFamily: 'MinecraftTen',
              fontSize: 40,
            ),
          ),
        ),
      ],
    );
  }
}
