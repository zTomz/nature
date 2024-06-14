import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

extension ColorTokenUtilExt on ColorTokenUtil {
  ColorToken get surface => const ColorToken('surface-color');
  ColorToken get onSurface => const ColorToken('on-surface-color');
}

final Map<ColorToken, Color> kThemeColors = {
  $token.color.surface: Colors.black,
  $token.color.onSurface: Colors.white,
};
