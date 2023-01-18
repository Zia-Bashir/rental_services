import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/components/booking/date_container.dart';
import 'package:rental_services/components/booking/payment_details.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class BookingDetailsScreen extends StatelessWidget {
  const BookingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white70,
          ),
        ),
        centerTitle: true,
        title: MyTextWidget(
          text: "Booking Details",
          size: Dimensions.size20,
          weight: FontWeight.bold,
          color: Colors.white70,
        ),
      ),
      body: Container(
        color: AppColors.bgColor,
        child: SafeArea(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(Dimensions.size20),
            child: Column(
              children: [
                //= Date Container
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(bottom: Dimensions.size20),
                    padding: EdgeInsets.all(Dimensions.size15),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: AppColors.shadeColor,
                      borderRadius: BorderRadius.circular(Dimensions.size10),
                    ),
                    child: const DateContainer(),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.all(Dimensions.size15),
                    margin: EdgeInsets.only(bottom: Dimensions.size20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: AppColors.shadeColor,
                      borderRadius: BorderRadius.circular(Dimensions.size10),
                    ),
                    child: const PaymentDetails(),
                  ),
                ),

                //= Confirm Button
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                      Get.back();
                    },
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: AppColors.iconColor,
                        borderRadius: BorderRadius.circular(Dimensions.size10),
                      ),
                      child: Center(
                        child: MyTextWidget(
                            text: "Confirm",
                            size: Dimensions.size15,
                            color: AppColors.darkBlueColor,
                            weight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
