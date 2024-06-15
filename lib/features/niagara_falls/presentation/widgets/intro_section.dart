import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:nature/core/config/theme/colors.dart';
import 'package:nature/core/config/theme/text_styles.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Stack(
        children: [
          Positioned.fill(
            child: StyledImage(
              style: Style(
                $image.fit.cover(),
              ),
              image: const AssetImage(
                'assets/images/niagara_falls/niagara_falls.png',
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Box(
              style: Style(
                $box.width(MediaQuery.sizeOf(context).width),
                $box.height(MediaQuery.sizeOf(context).height * 0.5),
                $box.linearGradient(
                  colors: [
                    Colors.black,
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned.fill(
            bottom: MediaQuery.paddingOf(context).bottom,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: $token.space.medium.resolve(context),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  StyledText(
                    "Niagara Falls",
                    style: Style(
                      $text.style.ref($token.textStyle.title),
                      $text.textAlign.center(),
                    ),
                  ),
                  SizedBox(
                    height: $token.space.small.resolve(context),
                  ),
                  StyledText(
                    "“Their roar is around me. I am on the brink Of the great waters—and their anthem voice Goes up amid the rainbow and the mist.”",
                    style: Style(
                      $text.style.ref($token.textStyle.body),
                      $text.textAlign.center(),
                    ),
                  ),
                  Box(
                    style: Style(
                      $box.color.ref($token.color.onSurface),
                      $box.height(1.5),
                      $box.margin.vertical.ref($token.space.small),
                      $box.borderRadius.all.ref($token.radius.large),
                      $box.width(200),
                    ),
                  ),
                  StyledText(
                    "— Grenville Mellen",
                    style: Style(
                      $text.style.ref($token.textStyle.bodySmall),
                      $text.textAlign.center(),
                    ),
                  ),
                  SizedBox(
                    height: $token.space.small.resolve(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
