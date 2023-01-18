import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/model/collection_cars_model.dart';
import 'package:rental_services/routes/app_routes.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class SavedCarsCollectionGrid extends StatelessWidget {
  const SavedCarsCollectionGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: Dimensions.size15,
          mainAxisSpacing: Dimensions.size15),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: cars.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Get.toNamed(Approutes.getDetailsScreen(index));
          },
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              color: AppColors.shadeColor,
              borderRadius: BorderRadius.circular(Dimensions.size10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Dimensions.size50 * 2,
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
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: Dimensions.size10,
                        right: Dimensions.size15,
                        left: Dimensions.size15,
                        bottom: Dimensions.size15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyTextWidget(
                          text: cars[index].model,
                          size: Dimensions.size15,
                          weight: FontWeight.bold,
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
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
