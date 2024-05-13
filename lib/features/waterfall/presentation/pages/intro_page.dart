import 'package:flutter/material.dart';
import 'package:nature/core/widgets/intro_page_mockup.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroPageMockup(
        image: 'assets/images/waterfall/waterfall.jpg',
        title: "Waterfalls",
        description:
            'A waterfall is generally defined as a point in a river where water flows over a steep drop that is close to or directly vertical. In 2000 Mabin specified that "The horizontal distance between the positions of the lip and plunge pool should be no more than c 25% of the waterfall height." There are various types and methods to classify waterfalls.[1] Some scholars have included rapids as a subsection.[2] What actually constitutes a waterfall continues to be debated.[3]',
      ),
    );
  }
}
