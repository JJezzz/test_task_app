import 'package:flutter/material.dart';
import 'package:test_task_app/features/home/logic/color_changer.dart';

import 'widgets/center_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color backgroundColor = Colors.white;
  int tapCount = 0;

  void changeColor() {
    setState(() {
      backgroundColor = getRandomColor();
      tapCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeColor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: [
            const CenterText(),
            Positioned(
              bottom: 30,
              right: 20,
              child: Text(
                'Taps: $tapCount',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
