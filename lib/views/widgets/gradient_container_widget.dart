import 'package:flutter/material.dart';
import 'package:studyo/utils/color_settings.dart';

class GradientContainerWidget extends StatelessWidget {
  final Widget child;
  const GradientContainerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorSettings.Kgradient1,
            ColorSettings.Kgradient2,
          ],
          stops: const [0.2, 0.6],
          tileMode: TileMode.repeated,
        ),
      ),
      child: child,
    );
  }
}
