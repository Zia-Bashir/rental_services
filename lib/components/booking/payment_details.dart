import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';
import 'package:rental_services/widget/payment_method_container_widget.dart';

import '../../widget/invoice_text_widget.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextWidget(
            text: "Payments Details",
            size: Dimensions.size20,
            weight: FontWeight.bold),
        Padding(
          padding: EdgeInsets.symmetric(vertical: Dimensions.size20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              PaymentMethodContainerWidget(
                iconUrl: "assets/icons/mastercard.png",
                text: "Master",
              ),
              PaymentMethodContainerWidget(
                iconUrl: "assets/icons/visa.png",
                text: "Visa",
              ),
              PaymentMethodContainerWidget(
                iconUrl: "assets/icons/paypal.png",
                text: "Paypal",
              ),
              PaymentMethodContainerWidget(
                iconUrl: "assets/icons/google.png",
                text: "Google",
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InvoiceTextWidget(
              text: "Subtotal",
              amount: "\$135.0",
            ),
            const InvoiceTextWidget(
              text: "Tax (GST)",
              amount: "\$10",
            ),
            const InvoiceTextWidget(
              text: "Coupon Discount",
              amount: "- \$15",
              discountPercent: "-30%",
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimensions.size10),
              child: Align(
                alignment: Alignment.centerRight,
                child: DottedDashedLine(
                  height: 0,
                  width: Dimensions.size50 * 2,
                  axis: Axis.horizontal,
                  dashColor: Colors.grey,
                ),
              ),
            ),
            const InvoiceTextWidget(
              text: "Total",
              amount: "- \$130.0",
            ),
          ],
        ),
      ],
    );
  }
}
