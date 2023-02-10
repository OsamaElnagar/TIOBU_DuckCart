import 'package:duckcart_osama/screens/donation_screen/binding.dart';
import 'package:duckcart_osama/screens/donation_screen/donation_screen.dart';
import 'package:duckcart_osama/screens/home_Screen/binding.dart';
import 'package:duckcart_osama/screens/home_Screen/home_screen.dart';
import 'package:duckcart_osama/screens/my_donations/my_donations.dart';
import 'package:duckcart_osama/shared/styles/colors.dart';
import 'package:duckcart_osama/shared/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/onboarding_screen/onBoarding_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/onBoardingScreen',
      getPages: [
        GetPage(name: '/homeScreen', page: () => const AllCreatorsScreen()),
        GetPage(
            name: '/donationScreen',
            page: () => DonationScreen(),
            binding: DonationScreenBinding()),
        GetPage(
            name: '/onBoardingScreen', page: () => const OnBoardingScreen()),
        GetPage(
            name: '/myDonationsScreen', page: () => const MyDonationsScreen()),
      ],
      initialBinding: HomeBinding(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: const AllCreatorsScreen(),
    );
  }
}
