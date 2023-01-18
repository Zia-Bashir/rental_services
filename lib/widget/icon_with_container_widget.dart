import 'package:flutter/material.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';

class IconWithContainerWidget extends StatelessWidget {
  const IconWithContainerWidget({
    super.key,
    required this.icon,
    this.padH = 0,
    this.padW = 0,
    this.iconSize = 0,
    this.radius = 0,
    this.onTap,
  });

  final IconData icon;
  final double padH;
  final double padW;
  final double? iconSize;
  final double? radius;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: padH,
          horizontal: padW,
        ),
        decoration: BoxDecoration(
          color: AppColors.iconColor,
          borderRadius:
              BorderRadius.circular(radius == 0 ? Dimensions.size05 : radius!),
        ),
        child: Icon(
          icon,
          size: iconSize == 0 ? Dimensions.size15 : iconSize,
        ),
      ),
    );
  }
}
