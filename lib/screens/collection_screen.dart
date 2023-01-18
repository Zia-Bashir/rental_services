import 'package:flutter/material.dart';
import 'package:rental_services/components/collection/car_collections_list.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/text_field_widget.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({super.key});

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        color: AppColors.bgColor,
        child: SafeArea(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(Dimensions.size20),
            child: Column(
              children: [
                TextFieldWidget(
                    controller: searchController,
                    hintText: "Search your favourite car",
                    icon: Icons.search),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.size10),
                    ),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Expanded(
                          //* Car Collection List
                          child: CarCollectionsList(),
                        ),
                      ],
                    ),
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
