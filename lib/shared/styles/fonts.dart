import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DuckTextStyles {
  static duckRegMontserrat({color, fw, fs}) {
    return GoogleFonts.montserrat(
      color: color ?? Colors.black,
      fontWeight: fw ?? FontWeight.w500,
      fontSize: fs ?? 40/3,
    );
  }

  static duckHintMontserrat({color, fw, fs}) {
    return GoogleFonts.montserrat(
      color: color ?? Colors.grey,
      fontWeight: fw ?? FontWeight.w600,
      fontSize: fs ?? 30 / 2,
    );
  }

  static duckHeadlines({color, fw, fs}) {
    return GoogleFonts.montserrat(
      color: color ?? Colors.black,
      fontWeight: fw ?? FontWeight.w700,
      fontSize: fs ?? 20,
    );
  }
}
