import 'package:duckcart_osama/screens/donation_screen/controller.dart';
import 'package:duckcart_osama/shared/components/components.dart';
import 'package:duckcart_osama/shared/styles/colors.dart';
import 'package:duckcart_osama/shared/styles/fonts.dart';
import 'package:duckcart_osama/shared/styles/form_fields.dart';
import 'package:duckcart_osama/shared/styles/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:currency_picker/currency_picker.dart';

class DonationScreen extends GetView<DonationScreenController> {
  TextEditingController currencyController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  DonationScreenController donationScreenController = Get.find();
  var formKey = GlobalKey<FormState>();
  final String? creator;
  final String? creatorURL;

  DonationScreen({super.key, this.creator, this.creatorURL});

  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size;

    Widget duckSpacer(int divider) {
      return SizedBox(
        width: double.infinity,
        height: mediaHeight.height / divider,
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(creatorURL!),
            ),
            const SizedBox(width: 5),
            Text(
              creator!,
              style: DuckTextStyles.duckHeadlines(color: DuckColors.duckWhite),
            ),
            const Icon(
              Icons.verified_rounded,
              color: DuckColors.duckWhite,
              size: 18.0,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: DuckPadding.mainDuckPadding(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Form(
              key: formKey,
              child: SizedBox(
                height: mediaHeight.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Send your love to ',
                        style: DuckTextStyles.duckHeadlines(fs: 18.0),
                        children: <TextSpan>[
                          TextSpan(
                              text: creator,
                              style: DuckTextStyles.duckHeadlines(
                                  fs: 18.0, color: DuckColors.duckMainColor)),
                          TextSpan(
                            text: ' to become a real fan.',
                            style: DuckTextStyles.duckHeadlines(
                              fs: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    duckSpacer(35),
                    TextButton(
                      onPressed: () {
                        showCurrencyPicker(
                          context: context,
                          showFlag: true,
                          showCurrencyName: true,
                          showCurrencyCode: true,
                          onSelect: (Currency currency) {
                            donationScreenController.currencyPicked.value =
                                true;
                            donationScreenController.currencySymbol.value =
                                currency.symbol;
                            donationScreenController.currencyName.value =
                                currency.name;
                            pint('Select currency: ${currency.name}');
                          },
                        );
                      },
                      child: donationScreenController.currencyPicked.value ==
                              true
                          ? GetBuilder<DonationScreenController>(
                              builder: (logic) {
                              return RichText(
                                text: TextSpan(
                                  text: logic.currencyName.value,
                                  style: DuckTextStyles.duckRegMontserrat(
                                      fs: 15.0),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: logic.currencySymbol.value,
                                        style: DuckTextStyles.duckRegMontserrat(
                                            fs: 18.0,
                                            color: DuckColors.duckMainColor)),
                                  ],
                                ),
                              );
                            })
                          : duckNormalTexts(norText: 'Select Currency',fs: 15.0,color: DuckColors.duckMainColor)
                    ),
                    // duckSpacer(25),
                    DuckFormFields.duckTextFormField(
                      onChanged: (v) {
                        donationScreenController.realTimeDonations(text: v);
                      },
                      controller: currencyController,
                      keyboardType: TextInputType.number,
                      hintText: '2000',
                    ),
                    duckSpacer(15),
                    DuckFormFields.duckTextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      hintText: 'Your name (optional)',
                    ),
                    duckSpacer(15),
                    DuckFormFields.duckTextFormField(
                      controller: noteController,
                      keyboardType: TextInputType.text,
                      hintText: 'Say something nice (optional)',
                    ),
                    duckSpacer(6),
                    Container(
                      width: 250,
                      height: 55,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(45)),
                        color: DuckColors.duckMainColor,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Obx(() {
                          return Text(
                            'Support \$${donationScreenController.textController.value}'
                                .toString(),
                            style: GoogleFonts.montserrat(
                                color: DuckColors.duckWhite,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          );
                        }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
