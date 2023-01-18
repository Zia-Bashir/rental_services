import 'package:flutter/material.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';
import 'dart:math' as math;

class DateDetailsWidget extends StatelessWidget {
  const DateDetailsWidget({
    Key? key,
    required this.icon,
    required this.fromTo,
    required this.dateText,
    required this.timeText,
  }) : super(key: key);

  final IconData icon;
  final String fromTo;
  final String dateText;
  final String timeText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: Dimensions.size15,
          backgroundColor: AppColors.darkBlueColor,
          child: Transform.rotate(
            angle: math.pi / 4,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: Dimensions.size20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextWidget(
              text: fromTo,
              size: Dimensions.size15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.size02),
              child: MyTextWidget(
                text: dateText,
                size: Dimensions.size15 + Dimensions.size02,
              ),
            ),
            MyTextWidget(
              text: timeText,
              size: Dimensions.size15,
              color: Colors.white70,
            ),
          ],
        ),
      ],
    );
  }
}
