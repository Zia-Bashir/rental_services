import 'package:flutter/material.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class SpecBorderContainerWidget extends StatelessWidget {
  const SpecBorderContainerWidget({
    Key? key,
    required this.text,
    required this.numb,
    required this.symbol,
  }) : super(key: key);

  final String text;
  final String numb;
  final String symbol;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.size10 * 10,
      width: Dimensions.size10 * 11,
      padding: EdgeInsets.all(Dimensions.size15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.size10),
        border:
            Border.all(color: const Color.fromARGB(255, 37, 36, 36), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyTextWidget(
            text: text,
            weight: FontWeight.bold,
            size: Dimensions.size15,
            color: Colors.grey[600],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextWidget(
                text: numb,
                weight: FontWeight.bold,
                size: Dimensions.size15,
                color: Colors.white70,
              ),
              MyTextWidget(
                text: symbol,
                weight: FontWeight.bold,
                size: Dimensions.size15,
                color: Colors.white38,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
