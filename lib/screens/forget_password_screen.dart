import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/icon_with_container_widget.dart';
import 'package:rental_services/widget/my_text_widget.dart';
import 'package:rental_services/widget/text_field_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mailController = TextEditingController();

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
                text: "Forget Password",
                size: Dimensions.size30,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
              MyTextWidget(
                text: "Enter email to proceed furtur",
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
              SizedBox(
                height: Dimensions.size40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextWidget(
                    text: "Submit",
                    size: Dimensions.size30,
                    color: Colors.white,
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: Dimensions.size10,
                  ),
                  IconWithContainerWidget(
                      onTap: () {
                        Get.toNamed("/confirm");
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
                      text: "Not a Member? ",
                      style: TextStyle(
                          color: Colors.white, fontSize: Dimensions.size10),
                      children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed("/register"),
                      text: " Register",
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
