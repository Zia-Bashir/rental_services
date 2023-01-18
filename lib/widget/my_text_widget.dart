import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget(
      {super.key,
      required this.text,
      this.color = Colors.white,
      required this.size,
      this.weight,
      this.align});

  final String text;
  final Color? color;
  final double size;
  final FontWeight? weight;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
      textAlign: align,
    );
  }
}
