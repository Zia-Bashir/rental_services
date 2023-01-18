import 'package:flutter/material.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/icon_with_container_widget.dart';
import 'package:rental_services/widget/my_text_widget.dart';
import 'package:rental_services/widget/text_field_widget.dart';

class TextContainerWithSearchBox extends StatelessWidget {
  const TextContainerWithSearchBox({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: Dimensions.size50 * 4,
      margin: EdgeInsets.only(right: Dimensions.size20),
      padding: EdgeInsets.only(
          top: Dimensions.size20,
          right: Dimensions.size20,
          left: Dimensions.size20,
          bottom: Dimensions.size20 - Dimensions.size15),
      decoration: BoxDecoration(
        color: AppColors.shadeColor,
        borderRadius: BorderRadius.circular(Dimensions.size10),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Align(
          alignment: Alignment.topCenter,
          child: MyTextWidget(
            text: "Select or search your\nfavourite vehicle",
            size: Dimensions.size25,
            weight: FontWeight.bold,
            color: Colors.white,
            align: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextFieldWidget(
                controller: searchController,
                hintText: "Search Here",
                icon: Icons.search,
                borderColor: const Color(0XFF39383D),
                bgColor: const Color(0XFF39383D),
              ),
            ),
            SizedBox(width: Dimensions.size15),
            Padding(
              padding: EdgeInsets.only(bottom: Dimensions.size15),
              child: IconWithContainerWidget(
                  icon: Icons.menu,
                  iconSize: Dimensions.size05 * 6,
                  padH: Dimensions.size10,
                  padW: Dimensions.size10),
            ),
          ],
        ),
      ]),
    );
  }
}
