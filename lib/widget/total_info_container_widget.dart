import 'package:flutter/material.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class TotalInfoContainerWidget extends StatelessWidget {
  const TotalInfoContainerWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.subText,
  }) : super(key: key);

  final String icon;
  final String text;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.size20),
      height: Dimensions.size20 * 7,
      decoration: BoxDecoration(
        color: const Color(0xFF014D64),
        borderRadius: BorderRadius.circular(Dimensions.size10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            icon,
            color: AppColors.iconColor,
            height: Dimensions.size05 * 7,
            width: Dimensions.size05 * 7,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextWidget(
                text: text,
                weight: FontWeight.bold,
                size: Dimensions.size30,
                color: AppColors.iconColor,
              ),
              MyTextWidget(
                text: subText,
                size: Dimensions.size15,
                color: AppColors.iconColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
