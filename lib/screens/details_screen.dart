import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/model/collection_cars_model.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/icon_with_text_row_widget.dart';
import 'package:rental_services/widget/my_text_widget.dart';
import 'package:rental_services/widget/spec_border_container_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.pageId});

  final int pageId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        color: AppColors.bgColor,
        padding: EdgeInsets.all(Dimensions.size15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //* Whole Page
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //* AppBar

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white70,
                        ),
                      ),
                      MyTextWidget(
                        text: "Details",
                        size: Dimensions.size20,
                        weight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                      const Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.white70,
                      )
                    ],
                  ),

                  //* Image Container
                  Container(
                    width: double.maxFinite,
                    height: Dimensions.size20 * 10,
                    margin: EdgeInsets.symmetric(
                      vertical: Dimensions.size20,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.shadeColor,
                      borderRadius: BorderRadius.circular(Dimensions.size05),
                      image: DecorationImage(
                          image: AssetImage(cars[pageId].imgUrl),
                          fit: BoxFit.cover),
                    ),
                  ),

                  //* Details

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTextWidget(
                        text: cars[pageId].model,
                        size: Dimensions.size20,
                        weight: FontWeight.bold,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: Dimensions.size10),
                        child: Row(
                          children: [
                            Icon(Icons.pin_drop_outlined,
                                color: Colors.white, size: Dimensions.size15),
                            SizedBox(
                              width: Dimensions.size05,
                            ),
                            MyTextWidget(
                              text: cars[pageId].location,
                              weight: FontWeight.bold,
                              size: Dimensions.size15,
                              color: Colors.grey.shade600,
                            ),
                          ],
                        ),
                      ),
                      MyTextWidget(
                        text: cars[pageId].price,
                        size: Dimensions.size15,
                        color: Colors.white70,
                      ),
                    ],
                  ),

                  //* Car Specs
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.size20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextWidget(
                          text: "Car Specs",
                          size: Dimensions.size15,
                          weight: FontWeight.bold,
                        ),
                        MyTextWidget(
                          text: "See More",
                          size: Dimensions.size10 + Dimensions.size02,
                          color: AppColors.iconColor,
                          //weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),

                  //* Specs in Border Container

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SpecBorderContainerWidget(
                          text: "Max Power", numb: "320", symbol: "hp"),
                      SpecBorderContainerWidget(
                          text: "0-60 mph", numb: "4.4", symbol: "sec"),
                      SpecBorderContainerWidget(
                          text: "Top Speed", numb: "175.0", symbol: "mph"),
                    ],
                  ),

                  //* Car Info
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.size20,
                    ),
                    child: MyTextWidget(
                      text: "Car Info",
                      size: Dimensions.size15,
                      weight: FontWeight.bold,
                    ),
                  ),
                  //* Icons

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const IconWithTextRowWidget(
                              icon: Icons.person, title: "4 Passengers"),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: Dimensions.size05),
                            child: const IconWithTextRowWidget(
                                icon: Icons.air, title: "Air Conditioning"),
                          ),
                          const IconWithTextRowWidget(
                              icon: Icons.speed, title: "Unlimited Millage"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const IconWithTextRowWidget(
                              icon: Icons.door_back_door, title: "4 Doors"),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: Dimensions.size05),
                            child: const IconWithTextRowWidget(
                                icon: Icons.settings, title: "Maunual"),
                          ),
                          const IconWithTextRowWidget(
                              icon: Icons.gas_meter,
                              title: "Gas: full to full"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //* Book Now Button
              GestureDetector(
                onTap: () {
                  Get.toNamed("/booking");
                },
                child: Container(
                  width: double.maxFinite,
                  height: Dimensions.size50,
                  decoration: BoxDecoration(
                    color: AppColors.iconColor,
                    borderRadius: BorderRadius.circular(Dimensions.size10),
                  ),
                  child: Center(
                      child: MyTextWidget(
                    text: "Book Now",
                    size: Dimensions.size15,
                    color: const Color(0xFF014D64),
                    weight: FontWeight.bold,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
