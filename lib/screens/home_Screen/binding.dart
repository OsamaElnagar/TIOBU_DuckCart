import 'package:duckcart_osama/screens/home_Screen/controller.dart';
import 'package:get/get.dart';

import '../donation_screen/controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => DonationScreenController());
  }
}
