import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/icon_with_container_widget.dart';
import 'package:rental_services/widget/my_button_widget.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(Dimensions.size20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: AppColors.shadeColor,
                      borderRadius: BorderRadius.circular(Dimensions.size20),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/CarLogo.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.size20,
                  ),
                  MyTextWidget(
                      text: "Book Car in Easy Steps",
                      size: Dimensions.size25,
                      color: Colors.white,
                      weight: FontWeight.bold),
                  SizedBox(
                    height: Dimensions.size10,
                  ),
                  MyTextWidget(
                    text:
                        "Renting a car brings you freedom, and we'll help you find the best car for you at a great price.",
                    size: Dimensions.size15,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: Dimensions.size10),
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: Dimensions.size05,
                      children: [
                        IconWithContainerWidget(
                            icon: Icons.star,
                            padH: Dimensions.size05,
                            padW: Dimensions.size05),
                        IconWithContainerWidget(
                            icon: Icons.star,
                            padH: Dimensions.size05,
                            padW: Dimensions.size05),
                        IconWithContainerWidget(
                            icon: Icons.star,
                            padH: Dimensions.size05,
                            padW: Dimensions.size05),
                        IconWithContainerWidget(
                            icon: Icons.star,
                            padH: Dimensions.size05,
                            padW: Dimensions.size05),
                        IconWithContainerWidget(
                            icon: Icons.star,
                            padH: Dimensions.size05,
                            padW: Dimensions.size05),
                      ],
                    ),
                  ),
                  MyTextWidget(
                    text: "Trust by 10 million customers",
                    size: Dimensions.size15,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButtonWidget(
                    onTap: () {
                      Get.toNamed("/signin");
                    },
                    text: "Sign In",
                    color: AppColors.bgColor,
                    border: const BorderSide(
                        color: Color.fromARGB(255, 89, 90, 95), width: 2),
                    textColor: AppColors.iconColor,
                    size: Size(MediaQuery.of(context).size.width * 0.43,
                        Dimensions.size40),
                  ),
                  MyButtonWidget(
                    onTap: () {
                      Get.toNamed("/register");
                    },
                    text: "Register",
                    color: AppColors.iconColor,
                    textColor: AppColors.bgColor,
                    size: Size(MediaQuery.of(context).size.width * 0.43,
                        Dimensions.size40),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
