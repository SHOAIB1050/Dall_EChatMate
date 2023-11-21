import 'package:flutter/material.dart';
import 'package:voiceassistant/pallete.dart';

class FeatureBox extends StatelessWidget {
  final Color color;
  final String HeaderText;
  final String DescriptionText;
  const FeatureBox(
      {super.key,
      required this.color,
      required this.HeaderText,
      required this.DescriptionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0).copyWith(left: 5),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                HeaderText,
                style: const TextStyle(
                    fontFamily: 'Cera Pro',
                    color: Pallete.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 5,),
            Text(
              DescriptionText,
              style: const TextStyle(
                  fontFamily: 'Cera Pro', color: Pallete.blackColor),
            )
          ],
        ),
      ),
    );
  }
}