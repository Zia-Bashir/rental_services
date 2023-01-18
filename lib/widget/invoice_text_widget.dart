import 'package:flutter/material.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class InvoiceTextWidget extends StatelessWidget {
  const InvoiceTextWidget({
    Key? key,
    required this.text,
    required this.amount,
    this.discountPercent = "",
  }) : super(key: key);

  final String text;
  final String amount;
  final String discountPercent;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.size02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextWidget(
                text: text,
                size: Dimensions.size15,
              ),
              SizedBox(
                height: Dimensions.size02,
              ),
              MyTextWidget(
                text: discountPercent,
                size: Dimensions.size10,
                color: Colors.grey.shade500,
              ),
            ],
          ),
          MyTextWidget(
            text: amount,
            size: Dimensions.size15,
          ),
        ],
      ),
    );
  }
}
