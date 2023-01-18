// ignore_for_file: deprecated_member_use

import 'dart:core';

import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({
    Key? key,
    required this.text,
    this.color,
    this.size,
    this.onTap,
    this.border,
    this.textColor,
  }) : super(key: key);

  final String text;

  final Color? color;
  final Color? textColor;
  final Size? size;
  final Function? onTap;
  final BorderSide? border;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap!();
      },
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: textColor,
        side: border,
        minimumSize: size,
      ),
      child: Text(text),
    );
  }
}
