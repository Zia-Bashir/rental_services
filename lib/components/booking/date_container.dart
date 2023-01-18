import 'package:flutter/material.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/date_details_widget.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //* Date Details
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            DateDetailsWidget(
                icon: Icons.arrow_downward_rounded,
                fromTo: "From:",
                dateText: "15 March",
                timeText: "10am - 12am"),
            DateDetailsWidget(
                icon: Icons.arrow_upward_rounded,
                fromTo: "To:",
                dateText: "20 March",
                timeText: "10am - 12am"),
          ],
        ),
        //* Date Picker Container

        Container(
          height: Dimensions.size40 * 3,
          width: Dimensions.size50 * 2,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.iconColor,
            ),
            borderRadius: BorderRadius.circular(Dimensions.size10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.date_range_rounded,
                color: AppColors.iconColor,
              ),
              SizedBox(
                height: Dimensions.size05,
              ),
              MyTextWidget(
                text: "Pick Date",
                size: Dimensions.size15,
                color: AppColors.iconColor,
              )
            ],
          ),
        ),
      ],
    );
  }
}
