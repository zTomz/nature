import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:nature/core/config/theme/text_styles.dart';

class TextSection extends StatelessWidget {
  /// The title of the section
  final String title;

  /// The content of the section
  final String content;

  const TextSection({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: $token.space.medium.resolve(context),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StyledText(
            title,
            style: Style(
              $text.style.ref($token.textStyle.subTitle),
              $text.textAlign.left(),
            ),
          ),
          SizedBox(
            height: $token.space.small.resolve(context),
          ),
          StyledText(
            content,
            style: Style(
              $text.style.ref($token.textStyle.body),
              $text.textAlign.left(),
            ),
          ),
        ],
      ),
    );
  }
}
