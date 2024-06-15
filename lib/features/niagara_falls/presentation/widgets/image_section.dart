import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    final squareImageSize = MediaQuery.sizeOf(context).width / 2 -
        $token.space.medium.resolve(context) * 1.5;

    return Box(
      style: Style(
        $box.height(squareImageSize * 3),
        $box.padding.all($token.space.medium.resolve(context)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Box(
              style: Style(
                $box.borderRadius.all.ref($token.radius.large),
                $box.width(squareImageSize),
                $box.height(squareImageSize),
                $box.clipBehavior.hardEdge(),
              ),
              child: Image.asset(
                'assets/images/niagara_falls/square.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Box(
              style: Style(
                $box.borderRadius.all.ref($token.radius.large),
                $box.width(squareImageSize),
                $box.height(squareImageSize * 1.75),
                $box.clipBehavior.hardEdge(),
              ),
              child: Image.asset(
                'assets/images/niagara_falls/portrait.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: squareImageSize + $token.space.medium.resolve(context),
            left: 0,
            child: ClipPath(
              clipper: ImageClipper(
                squareImageSize: squareImageSize,
                borderRadius: $token.radius.large.resolve(context),
              ),
              child: Image.asset(
                'assets/images/niagara_falls/landscape.jpg',
                height: squareImageSize * 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageClipper extends CustomClipper<Path> {
  final double squareImageSize;
  final Radius borderRadius;

  const ImageClipper({
    required this.squareImageSize,
    required this.borderRadius,
  });

  @override
  Path getClip(Size size) {
    final width = squareImageSize * 2 + 16;

    return Path()
      ..moveTo(0, borderRadius.x)
      ..cubicTo(0, borderRadius.x, 0, 0, borderRadius.x, 0)
      ..lineTo(squareImageSize - borderRadius.x, 0)
      ..cubicTo(
        squareImageSize - borderRadius.x,
        0,
        squareImageSize,
        0,
        squareImageSize,
        borderRadius.x,
      )
      ..lineTo(squareImageSize, squareImageSize * 0.75 - borderRadius.x)
      ..cubicTo(
        squareImageSize,
        squareImageSize * 0.75 - borderRadius.x,
        squareImageSize,
        squareImageSize * 0.75,
        squareImageSize + borderRadius.x,
        squareImageSize * 0.75,
      )
      ..lineTo(
        width - borderRadius.x,
        squareImageSize * 0.75,
      )
      ..cubicTo(
        width - borderRadius.x,
        squareImageSize * 0.75,
        width,
        squareImageSize * 0.75,
        width,
        squareImageSize * 0.75 + borderRadius.x,
      )
      ..lineTo(width, squareImageSize * 1.75 - borderRadius.x)
      ..cubicTo(
        width,
        squareImageSize * 1.75 - borderRadius.x,
        width,
        squareImageSize * 1.75,
        width - borderRadius.x,
        squareImageSize * 1.75,
      )
      ..lineTo(borderRadius.x, squareImageSize * 1.75)
      ..cubicTo(
        borderRadius.x,
        squareImageSize * 1.75,
        0,
        squareImageSize * 1.75,
        0,
        squareImageSize * 1.75 - borderRadius.x,
      )
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
