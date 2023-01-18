import 'package:flutter/material.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class IconWithTextRowWidget extends StatelessWidget {
  const IconWithTextRowWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.iconColor,
          size: Dimensions.size15 + Dimensions.size02,
        ),
        SizedBox(
          width: Dimensions.size05,
        ),
        MyTextWidget(text: title, size: Dimensions.size10 + Dimensions.size02),
      ],
    );
  }
}
