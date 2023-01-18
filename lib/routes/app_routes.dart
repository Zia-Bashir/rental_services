import 'package:get/get.dart';
import 'package:rental_services/screens/booking_details_screen.dart';
import 'package:rental_services/screens/bottom_navbar_screen.dart';
import 'package:rental_services/screens/confirm_password_screen.dart';
import 'package:rental_services/screens/details_screen.dart';
import 'package:rental_services/screens/forget_password_screen.dart';
import 'package:rental_services/screens/intro_screen.dart';
import 'package:rental_services/screens/registered_screen.dart';
import 'package:rental_services/screens/sign_in_screen.dart';

class Approutes {
  static const String detailScreen = '/details-screen';

  static String getDetailsScreen(int pageId) => '$detailScreen?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(
      name: "/",
      page: () => const IntroScreen(),
    ),
    GetPage(
      name: "/register",
      page: () => const RegisteredScreen(),
    ),
    GetPage(
      name: "/signin",
      page: () => const SignINScreen(),
    ),
    GetPage(
      name: "/forget",
      page: () => const ForgetPasswordScreen(),
    ),
    GetPage(
      name: "/navbar",
      page: () => const BottomNavBarScreen(),
    ),
    GetPage(
      name: "/booking",
      page: () => const BookingDetailsScreen(),
    ),
    GetPage(
      name: "/confirm",
      page: () => const ConfirmPasswordScreen(),
    ),
    GetPage(
        name: detailScreen,
        page: () {
          var pageId = Get.parameters['pageId'];
          return DetailsScreen(
            pageId: int.parse(pageId!),
          );
        },
        transition: Transition.fadeIn),
  ];
}
