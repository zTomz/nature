import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mix/mix.dart';

extension TextStyleTokenUtilExt on TextStyleTokenUtil {
  TextStyleToken get title => const TextStyleToken('title');
  TextStyleToken get subTitle => const TextStyleToken('subTitle');
  TextStyleToken get body => const TextStyleToken('body');
  TextStyleToken get bodySmall => const TextStyleToken('bodySmall');
}

const String _titleFontName = "SedanSC";

final Map<TextStyleToken, TextStyle> kTextStyles = {
  $token.textStyle.title: const TextStyle(
    fontFamily: _titleFontName,
    fontSize: 70,
    height: 1.1,
    letterSpacing: 5,
    color: Colors.white,
  ),
  $token.textStyle.subTitle: const TextStyle(
    fontFamily: _titleFontName,
    fontSize: 30,
    height: 1.2,
    letterSpacing: 5,
    color: Colors.white,
  ),
  $token.textStyle.body: GoogleFonts.inter(
    fontSize: 16,
    height: 1.65,
    color: Colors.white,
  ),
  $token.textStyle.bodySmall: GoogleFonts.inter(
    fontSize: 12,
    color: Colors.white,
  ),
};
