import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/icon_with_container_widget.dart';
import 'package:rental_services/widget/my_text_widget.dart';
import 'package:rental_services/widget/text_field_widget.dart';

class RegisteredScreen extends StatelessWidget {
  const RegisteredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var mailController = TextEditingController();
    var passwordController = TextEditingController();

    // void _registration() {
    //   String name = nameController.text.trim();
    //   String email = mailController.text.trim();
    //   String password = passwordController.text.trim();

    //   if (email.isEmpty) {
    //   } else if (password.isEmpty) {
    //   } else if (password.length < 6) {
    //   } else if (name.isEmpty) {
    //   } else {}
    // }

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
                text: "Create Account",
                size: Dimensions.size30,
                color: Colors.white,
                weight: FontWeight.bold,
              ),
              MyTextWidget(
                text: "Sign up to new account",
                size: Dimensions.size15,
                color: Colors.white,
              ),
              SizedBox(
                height: Dimensions.size40,
              ),
              TextFieldWidget(
                  controller: nameController,
                  hintText: "Full Name",
                  icon: Icons.person),
              TextFieldWidget(
                  controller: mailController,
                  hintText: "Email",
                  icon: Icons.mail),
              TextFieldWidget(
                  controller: passwordController,
                  hintText: "Password",
                  icon: Icons.password_rounded,
                  suffixIcon: Icons.visibility_rounded),
              SizedBox(
                height: Dimensions.size40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyTextWidget(
                    text: "Create",
                    size: Dimensions.size30,
                    color: Colors.white,
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: Dimensions.size10,
                  ),
                  IconWithContainerWidget(
                      onTap: () {
                        Get.toNamed("/signin");
                        // Get.snackbar("Account Create Succesfully",
                        //     "Your account is creeated successfully");
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
                      text: "Already have an account? ",
                      style: TextStyle(
                          color: Colors.white, fontSize: Dimensions.size10),
                      children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed("/signin"),
                      text: " Sign In",
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
