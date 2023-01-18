import 'package:flutter/material.dart';
import 'package:rental_services/components/home/best_car_list.dart';
import 'package:rental_services/components/home/car_brand_list.dart';
import 'package:rental_services/components/home/home_app_bar.dart';
import 'package:rental_services/components/home/text_container_with_searchbox.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        color: AppColors.bgColor,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: Dimensions.size20,
                  left: Dimensions.size20,
                  bottom: Dimensions.size20),
              child: Column(
                children: [
                  //* App Bar
                  Padding(
                    padding: EdgeInsets.only(right: Dimensions.size20),
                    child: const HomeAppBar(),
                  ),

                  SizedBox(
                    height: Dimensions.size20,
                  ),
                  //* Container With Search Box
                  TextContainerWithSearchBox(
                      searchController: searchController),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Dimensions.size20,
                        bottom: Dimensions.size20,
                        right: Dimensions.size20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextWidget(
                          text: "Top Brands",
                          size: Dimensions.size20,
                          color: Colors.white,
                          weight: FontWeight.bold,
                        ),
                        MyTextWidget(
                          text: "See All",
                          size: Dimensions.size15,
                          color: Colors.grey.shade400,
                        ),
                      ],
                    ),
                  ),

                  //* Car Brand List

                  SizedBox(
                    height: Dimensions.size50 * 2,
                    width: double.maxFinite,
                    child: Column(
                      children: const [
                        Expanded(
                          child: CarBrandsList(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: Dimensions.size20,
                        bottom: Dimensions.size20,
                        right: Dimensions.size20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyTextWidget(
                          text: "Best Cars",
                          size: Dimensions.size20,
                          color: Colors.white,
                          weight: FontWeight.bold,
                        ),
                        MyTextWidget(
                          text: "See All",
                          size: Dimensions.size15,
                          color: Colors.grey.shade400,
                        ),
                      ],
                    ),
                  ),

                  //* Best Cars List
                  SizedBox(
                    height: Dimensions.size10 * 19,
                    width: double.maxFinite,
                    child: Column(
                      children: const [
                        Expanded(
                          child: BestCarsList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
