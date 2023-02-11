import 'package:duckcart_osama/screens/donation_screen/binding.dart';
import 'package:get/get.dart';

class DonationScreenController extends GetxController {
  DonationScreenBinding d = DonationScreenBinding();

  var textController = ''.obs;
  var currencySymbol = ''.obs;
  var currencyName = ''.obs;
  var currencyPicked = false.obs;

  void realTimeDonations({text}) {
    textController.value = text;
  }

}
