import 'package:flutter/material.dart';
import 'package:rental_services/components/saved/saved_car_collection_grid.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class SavedCollectionScreen extends StatelessWidget {
  const SavedCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        color: AppColors.bgColor,
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(Dimensions.size20),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyTextWidget(text: "My Collections", size: Dimensions.size20),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: Dimensions.size20),
                    child: const SavedCarsCollectionGrid(),
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
