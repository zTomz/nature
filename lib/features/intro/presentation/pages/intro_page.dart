import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IntroPage extends StatefulHookWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/waterfall/waterfall.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.5,
              width: MediaQuery.sizeOf(context).width,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AutoSizeText(
                    "Waterfalls",
                    style: TextStyle(
                      fontSize: 1000,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    'A waterfall is generally defined as a point in a river where water flows over a steep drop that is close to or directly vertical. In 2000 Mabin specified that "The horizontal distance between the positions of the lip and plunge pool should be no more than c 25% of the waterfall height." There are various types and methods to classify waterfalls.[1] Some scholars have included rapids as a subsection.[2] What actually constitutes a waterfall continues to be debated.[3]',
                    style: TextStyle(color: Colors.white),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
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
