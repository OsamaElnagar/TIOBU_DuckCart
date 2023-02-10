import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles/colors.dart';
import '../styles/fonts.dart';

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

Future navigate2(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);

Widget duckButton(
    {required String string, required Function() onPressed, width, height}) {
  return Container(
    width: width ?? 250,
    height: height ?? 55,
    decoration: const BoxDecoration(
      borderRadius: BorderRadiusDirectional.all(Radius.circular(45)),
      color: DuckColors.duckMainColor,
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        string,
        style: GoogleFonts.montserrat(
            color: DuckColors.duckWhite,
            fontWeight: FontWeight.w700,
            fontSize: 20),
      ),
    ),
  );
}

void pint(String text) {
  debugPrint(text);
}

Text duckHints({required String hint, textAlign, color, fw, fs}) {
  return Text(
    hint,
    style: DuckTextStyles.duckHintMontserrat(color: color, fw: fw, fs: fs),
    textAlign: textAlign ?? TextAlign.center,
  );
}

Text duckHeadlines({required String headline, color, fw, fs}) {
  return Text(
    headline,
    textAlign: TextAlign.center,
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
    style: DuckTextStyles.duckHeadlines(color: color, fw: fw, fs: fs),
  );
}

Text duckNormalTexts({required String norText, fs, fw, color}) {
  return Text(
    norText,
    textAlign: TextAlign.center,
    style: DuckTextStyles.duckRegMontserrat(fs: fs, fw: fw, color: color),
  );
}
