import 'package:flutter/material.dart';

class ValidationTextWidget extends StatelessWidget {
  final bool isInvalidCharacters;
  final bool isShortLength;
  final bool isUnavailable;
  final bool isCant;

  const ValidationTextWidget({
    super.key,
    required this.isInvalidCharacters,
    required this.isShortLength,
    required this.isUnavailable,
    required this.isCant,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 8.0,
        bottom: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "- Use characters and numbers only",
            style: TextStyle(
              color: isInvalidCharacters ? Colors.red : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "- Minimum 8 characters",
            style: TextStyle(
              color: isShortLength ? Colors.red : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "- This Username is unavailable",
            style: TextStyle(
              color: isUnavailable ? Colors.red : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "- You can't change your username",
            style: TextStyle(
              color: isCant ? Colors.red : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
