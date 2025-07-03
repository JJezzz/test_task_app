import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  const CenterText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hey there',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
