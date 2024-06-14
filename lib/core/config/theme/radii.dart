import 'dart:ui';

import 'package:mix/mix.dart';

final Map<RadiusToken, Radius> kRadii = {
  $token.radius.small: const Radius.circular(8),
  $token.radius.medium: const Radius.circular(20),
  $token.radius.large: const Radius.circular(32),
};
