import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_services/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rental Services',
        //home: const BookingDetailsScreen(),
        getPages: Approutes.routes);
  }
}
