import 'package:flutter/material.dart';
import 'package:rental_services/model/car_model.dart';
import 'package:rental_services/utils/colors.dart';
import 'package:rental_services/utils/dimensions.dart';
import 'package:rental_services/widget/my_text_widget.dart';

class CarBrandsList extends StatefulWidget {
  const CarBrandsList({
    Key? key,
  }) : super(key: key);

  @override
  State<CarBrandsList> createState() => _CarBrandsListState();
}

class _CarBrandsListState extends State<CarBrandsList> {
  List<CarModel> cars = [
    CarModel(brandName: "BMW", imgUrl: "assets/images/bmw.png"),
    CarModel(brandName: "Jaguar", imgUrl: "assets/images/jaguar.png"),
    CarModel(brandName: "Suzuki", imgUrl: "assets/images/suzuki.png"),
    CarModel(brandName: "Honda", imgUrl: "assets/images/honda.png"),
    CarModel(brandName: "Opel", imgUrl: "assets/images/opel.png"),
    CarModel(brandName: "Toyota", imgUrl: "assets/images/toyota.png"),
    //CarModel(brandName: "Mercedes", imgUrl: "assets/images/mercedes.png"),
    // CarModel(brandName: "Lamborghini", imgUrl: "assets/images/lamborghini.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cars.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(Dimensions.size10),
          margin: EdgeInsets.only(right: Dimensions.size20),
          height: Dimensions.size50 * 2,
          width: Dimensions.size40 * 2,
          decoration: BoxDecoration(
            color: AppColors.shadeColor,
            borderRadius: BorderRadius.circular(Dimensions.size10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                cars[index].imgUrl,
                height: Dimensions.size40,
                width: Dimensions.size50,
              ),
              MyTextWidget(
                text: cars[index].brandName,
                size: Dimensions.size15,
                color: Colors.white,
                weight: FontWeight.bold,
              )
            ],
          ),
        );
      },
    );
  }
}
