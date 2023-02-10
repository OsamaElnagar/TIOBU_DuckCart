import 'package:duckcart_osama/shared/components/backgrounds.dart';
import 'package:duckcart_osama/shared/components/components.dart';
import 'package:duckcart_osama/shared/styles/colors.dart';
import 'package:duckcart_osama/shared/styles/paddings.dart';
import 'package:duckcart_osama/shared/styles/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
// demo code ௹௹
    void currency() {
      Locale locale = Localizations.localeOf(context);
      var format = NumberFormat.simpleCurrency(locale: locale.toString());
      print("CURRENCY SYMBOL ${format.currencySymbol}"); // $
      print("CURRENCY NAME ${format.currencyName}"); // USD
    }
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Backgrounds.onBoardingBackGround(),
            DuckPadding.mainDuckPadding(
              t: 50.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  duckHeadlines(
                      headline: DuckBoardingStrings.onBoardingL1,
                      color: DuckColors.duckWhite),
                  duckNormalTexts(
                      norText: DuckBoardingStrings.onBoardingL2,
                      color: DuckColors.duckWhite),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.indigoAccent.withOpacity(.5),
                    radius: 100,
                    child: duckButton(
                      string: 'Creator',
                      onPressed: () {
                        currency();
                      },
                      width: 120.0,
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.indigoAccent.withOpacity(.5),
                    radius: 100,
                    child: duckButton(
                      string: 'Donor',
                      onPressed: () {},
                      width: 120.0,
                    ),
                  ),
                  const Spacer(),
                  duckHints(hint: 'Just see what next!'),
                  duckButton(
                    string: DuckBoardingStrings.getStarted,
                    onPressed: () {
                      Get.toNamed('/homeScreen');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
