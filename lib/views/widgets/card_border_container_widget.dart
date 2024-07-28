import 'package:flutter/material.dart';

class CardBorderContainerWidget extends StatelessWidget {
  final Widget child;
  const CardBorderContainerWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }
}
