import 'package:duckcart_osama/screens/donation_screen/controller.dart';
import 'package:get/get.dart';

class DonationScreenBinding implements Bindings {
  @override
  void dependencies() {
    //Get.lazyPut(() => DonationScreenController());
    Get.put(DonationScreenController());
  }
}
