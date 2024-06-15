import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:nature/core/config/theme/colors.dart';
import 'package:nature/features/niagara_falls/presentation/widgets/image_section.dart';
import 'package:nature/features/niagara_falls/presentation/widgets/intro_section.dart';
import 'package:nature/features/niagara_falls/presentation/widgets/text_section.dart';

class NiagaraFallsPage extends StatelessWidget {
  const NiagaraFallsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $token.color.surface.resolve(context),
      body: ListView(
        padding: EdgeInsets.zero,
        children: const [
          IntroSection(),
          TextSection(
            title: "What are the Niagara Falls?",
            content:
                "The Niagara Falls is made up of three waterfalls on the border between Ontario, Canada, and New York, USA. Horseshoe Falls (or Canadian Falls) straddles the international border, while American Falls and Bridal Veil Falls are entirely within the United States. Bridal Veil Falls is separated from Horseshoe Falls by Goat Island and from American Falls by Luna Island, both in New York. The falls are fed by the Niagara River, which drains Lake Erie into Lake Ontario. This makes them the highest-flowing waterfall in North America, dropping over 50 meters (160 feet). At peak tourist times, they see more than 168,000 cubic meters (5.9 million cubic feet) of water per minute. Horseshoe Falls is the continent's most powerful waterfall by flow rate.",
          ),
          ImageSection(),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
