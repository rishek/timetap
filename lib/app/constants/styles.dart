import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dimens.dart';

TextStyle get largeStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.large, color: Colors.black));
}

TextStyle get mediumStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.medium, color: Colors.black));
}

TextStyle get normalStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.normal, color: Colors.black));
}

TextStyle get smallStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.small, color: Colors.black));
}

TextStyle get miniStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(fontSize: AppDimens.mini, color: Colors.black));
}
