import 'package:flutter/material.dart';
import 'package:trytocode/dice_roller.dart';

const startAlignment = Alignment.bottomCenter;
const endAlignment = Alignment.bottomRight;
const padding = EdgeInsets.only(top: 16.0);

@immutable
// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  final Widget child;
  const GradientContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 189, 40, 60),
            Color.fromARGB(124, 103, 103, 121),
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
