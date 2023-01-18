import 'package:flutter/material.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColors.shadeColor,
              child: Icon(Icons.pin_drop_outlined),
            ),
            SizedBox(
              width: Dimensions.size15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTextWidget(
                  text: "Your Location",
                  size: Dimensions.size10,
                  color: Colors.grey.shade400,
                ),
                MyTextWidget(
                  text: "Okara, Pakistan",
                  size: Dimensions.size15,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
        const CircleAvatar(
          backgroundColor: AppColors.shadeColor,
          backgroundImage: AssetImage(
            "assets/images/CarLogo.jpg",
          ),
        ),
      ],
    );
  }
}
