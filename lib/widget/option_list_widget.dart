import 'package:flutter/material.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class OptionsListWidget extends StatelessWidget {
  const OptionsListWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              width: Dimensions.size20,
            ),
            MyTextWidget(
              text: text,
              size: Dimensions.size15,
              weight: FontWeight.bold,
            ),
          ],
        ),
        SizedBox(
          height: Dimensions.size05,
        ),
        const Divider(
          color: Color.fromARGB(255, 88, 88, 88),
        )
      ],
    );
  }
}
