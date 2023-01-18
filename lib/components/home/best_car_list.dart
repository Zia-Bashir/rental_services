import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/model/collection_cars_model.dart';
import 'package:rental_services/routes/app_routes.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class BestCarsList extends StatelessWidget {
  const BestCarsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cars.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Get.toNamed(Approutes.getDetailsScreen(index));
          },
          child: Container(
            height: Dimensions.size10 * 19,
            width: Dimensions.size10 * 16,
            margin: EdgeInsets.only(right: Dimensions.size20),
            decoration: BoxDecoration(
              color: AppColors.shadeColor,
              borderRadius: BorderRadius.circular(Dimensions.size10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: Dimensions.size50 * 2,
                  width: double.maxFinite,
                  margin: EdgeInsets.all(Dimensions.size05 / Dimensions.size02),
                  decoration: BoxDecoration(
                    color: AppColors.shadeColor,
                    borderRadius: BorderRadius.circular(Dimensions.size10),
                    image: DecorationImage(
                        image: AssetImage(cars[index].imgUrl),
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(Dimensions.size10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextWidget(
                          text: cars[index].model,
                          size: Dimensions.size15,
                          weight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        MyTextWidget(
                          text: cars[index].price,
                          size: Dimensions.size15,
                          weight: FontWeight.bold,
                          color: AppColors.iconColor,
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
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
