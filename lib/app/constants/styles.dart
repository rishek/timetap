import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dimens.dart';

TextStyle get bigStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.big, color: Colors.white));
}


TextStyle get largeStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.large, color: Colors.white));
}

TextStyle get mediumStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.medium, color: Colors.white));
}

TextStyle get normalStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.normal, color: Colors.white));
}

TextStyle get smallStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.small, color: Colors.white));
}

TextStyle get miniStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.mini, color: Colors.black));
}
