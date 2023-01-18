import 'package:flutter/material.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    this.color = Colors.grey,
    this.errorText,
    this.suffixIcon,
    this.borderColor = AppColors.shadeColor,
    this.bgColor = AppColors.shadeColor,
    this.hiddenText = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final Color? color;
  final String? errorText;
  final IconData? suffixIcon;
  final Color? borderColor;
  final Color? bgColor;
  final bool? hiddenText;

  @override
  Widget build(BuildContext context) {
    FocusNode fieldNode = FocusNode();

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(Dimensions.size10)),
          child: TextField(
            obscureText: hiddenText!,
            focusNode: fieldNode,
            controller: controller,
            style: const TextStyle(color: Colors.grey),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              suffixIcon: Icon(
                suffixIcon,
                color: Colors.grey,
              ),
              errorText: errorText,
              // prefixIconColor: fieldNode.hasFocus?
              //      Theme.of(context).iconTheme.color
              //     : Colors.grey,
              prefixIcon: Icon(
                icon,
                color: Colors.grey,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.size10),
                borderSide: BorderSide(width: 1, color: borderColor!),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.size10),
                borderSide: BorderSide(width: 1, color: borderColor!),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.size10),
                //borderSide: const BorderSide(width: 1, color: Colors.orange),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(Dimensions.size10),
                borderSide: const BorderSide(width: 1, color: Colors.orange),
              ),
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.size15,
        )
      ],
    );
  }
}
