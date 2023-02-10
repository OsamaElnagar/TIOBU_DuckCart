import 'package:duckcart_osama/shared/styles/strings.dart';
import 'package:flutter/material.dart';

class Backgrounds {
  static Widget onBoardingBackGround() {
    return SizedBox(
        height: double.infinity,
        child: Image.asset(DuckBoardingStrings.backgroundAssets, fit: BoxFit.cover));
  }
}
