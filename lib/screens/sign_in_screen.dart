import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/icon_with_container_widget.dart';
import 'package:rental_services/widget/my_text_widget.dart';
import 'package:rental_services/widget/text_field_widget.dart';

class SignINScreen extends StatelessWidget {
  const SignINScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mailController = TextEditingController();
    var passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(Dimensions.size20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyTextWidget(
                text: "Hello",
                size: Dimensions.size40,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
              MyTextWidget(
                text: "Sign in to your account",
                size: Dimensions.size15,
                color: Colors.white,
              ),
              SizedBox(
                height: Dimensions.size40,
              ),
              TextFieldWidget(
                  controller: mailController,
                  hintText: "Email",
                  icon: Icons.mail),
              TextFieldWidget(
                  controller: passwordController,
                  hintText: "Password",
                  hiddenText: true,
                  icon: Icons.password_rounded,
                  suffixIcon: Icons.visibility_rounded),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed("/forget");
                  },
                  child: Text(
                    "Forget your password?",
                    style: TextStyle(
                      color: AppColors.iconColor,
                      fontSize: Dimensions.size15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.size40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextWidget(
                    text: "Sign in",
                    size: Dimensions.size30,
                    color: Colors.white,
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: Dimensions.size10,
                  ),
                  IconWithContainerWidget(
                      onTap: () {
                        Get.toNamed("/navbar");
                      },
                      icon: Icons.arrow_forward_ios,
                      padH: Dimensions.size10,
                      padW: Dimensions.size20)
                ],
              ),
              SizedBox(
                height: Dimensions.size20,
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                          color: Colors.white, fontSize: Dimensions.size10),
                      children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed("/register"),
                      text: " Create",
                      style: TextStyle(
                        color: AppColors.iconColor,
                        fontSize: Dimensions.size15,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
