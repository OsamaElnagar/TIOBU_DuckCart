import 'package:duckcart_osama/screens/donation_screen/binding.dart';
import 'package:get/get.dart';

class DonationScreenController extends GetxController {
  DonationScreenBinding d = DonationScreenBinding();

  var textController = ''.obs;

  void realTimeDonations({text}) {
    textController.value = text;
  }


}
