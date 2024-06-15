import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:nature/core/config/theme/colors.dart';
import 'package:nature/core/config/theme/text_styles.dart';
import 'package:nature/features/niagara_falls/presentation/widgets/intro_widget.dart';

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
          IntroWidget(),
        ],
      ),
    );
  }
}
