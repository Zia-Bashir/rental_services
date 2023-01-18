import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';
import 'package:rental_services/widget/option_list_widget.dart';
import 'package:rental_services/widget/total_info_container_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        color: AppColors.bgColor,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.size20),
            child: Column(
              children: [
                //* Image with Name
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: Dimensions.size40,
                      backgroundColor: AppColors.shadeColor,
                      backgroundImage:
                          const AssetImage("assets/images/jaguar2.jpg"),
                    ),
                    SizedBox(
                      width: Dimensions.size20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyTextWidget(
                            text: "Zia Bashir", size: Dimensions.size25),
                        SizedBox(
                          height: Dimensions.size05,
                        ),
                        MyTextWidget(
                          text: "m.ziabashir@gmail.com",
                          size: Dimensions.size15,
                          color: Colors.grey.shade400,
                        ),
                      ],
                    ),
                  ],
                ),

                //* Total Rides

                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Dimensions.size20,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 1,
                        child: TotalInfoContainerWidget(
                            icon: "assets/icons/sport-car.png",
                            text: "2451",
                            subText: "Total Km"),
                      ),
                      SizedBox(
                        width: Dimensions.size20,
                      ),
                      const Expanded(
                        flex: 1,
                        child: TotalInfoContainerWidget(
                            icon: "assets/icons/bicycle.png",
                            text: "15",
                            subText: "Total Rides"),
                      ),
                    ],
                  ),
                ),

                //* List of Options

                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: Dimensions.size10,
                  ),
                  width: double.maxFinite,
                  child: Column(
                    children: const [
                      OptionsListWidget(
                          icon: Icons.history, text: "Rides History"),
                      OptionsListWidget(
                          icon: Icons.payment, text: "Payment Method"),
                      OptionsListWidget(
                          icon: Icons.policy_outlined, text: "FAQ"),
                      OptionsListWidget(
                          icon: Icons.menu_book_rounded,
                          text: "Terms and Conditions"),
                      OptionsListWidget(
                          icon: Icons.settings_outlined, text: "App Setting"),
                      OptionsListWidget(
                          icon: Icons.support_outlined, text: "Support Center"),
                    ],
                  ),
                ),

                //* Logout Buton

                GestureDetector(
                  onTap: () {
                    Get.toNamed('/signin');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: Dimensions.size10,
                        horizontal: Dimensions.size20),
                    decoration: BoxDecoration(
                      color: AppColors.iconColor,
                      borderRadius: BorderRadius.circular(Dimensions.size10),
                    ),
                    child: MyTextWidget(
                      text: "Logout",
                      weight: FontWeight.bold,
                      size: Dimensions.size15,
                      color: const Color(0xFF014D64),
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
