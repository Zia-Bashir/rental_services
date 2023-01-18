import 'package:flutter/material.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class PaymentMethodContainerWidget extends StatelessWidget {
  const PaymentMethodContainerWidget({
    Key? key,
    required this.iconUrl,
    required this.text,
  }) : super(key: key);

  final String iconUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.size40 * 2,
      width: Dimensions.size10 * 7,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade700,
        ),
        borderRadius: BorderRadius.circular(Dimensions.size10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(iconUrl,
              height: Dimensions.size30, width: Dimensions.size30),
          SizedBox(
            height: Dimensions.size05,
          ),
          MyTextWidget(text: text, size: Dimensions.size02 * 6)
        ],
      ),
    );
  }
}
