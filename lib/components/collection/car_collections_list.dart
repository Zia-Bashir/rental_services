// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/model/collection_cars_model.dart';
import 'package:rental_services/routes/app_routes.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/icon_with_text_row_widget.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class CarCollectionsList extends StatelessWidget {
  const CarCollectionsList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cars.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Get.toNamed(Approutes.getDetailsScreen(index));
          },
          child: Container(
            margin: EdgeInsets.only(bottom: Dimensions.size10),
            padding: EdgeInsets.all(Dimensions.size20),
            height: Dimensions.size50 * 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.size10),
              color: AppColors.shadeColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextWidget(
                      text: cars[index].model,
                      size: Dimensions.size20,
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: Dimensions.size05,
                    ),
                    Row(
                      children: [
                        Icon(Icons.pin_drop_outlined,
                            color: Colors.white, size: Dimensions.size15),
                        SizedBox(
                          width: Dimensions.size05,
                        ),
                        MyTextWidget(
                          text: cars[index].location,
                          size: Dimensions.size10 + Dimensions.size02,
                          color: Colors.grey.shade400,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: Dimensions.size40 * 3,
                  // padding: EdgeInsets.all(Dimensions.size10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.size10),
                    color: AppColors.shadeColor,
                    image: DecorationImage(
                        image: AssetImage(cars[index].imgUrl),
                        fit: BoxFit.cover),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconWithTextRowWidget(
                      icon: Icons.person,
                      title: "${cars[index].passengers.toString()}  Passengers",
                    ),
                    IconWithTextRowWidget(
                      icon: Icons.settings,
                      title: cars[index].type,
                    ),
                    MyTextWidget(
                      text: cars[index].price,
                      size: Dimensions.size10 + Dimensions.size02,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
