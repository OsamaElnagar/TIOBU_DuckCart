import 'dart:convert';

import 'package:duckcart_osama/screens/donation_screen/donation_screen.dart';
import 'package:duckcart_osama/screens/home_Screen/controller.dart';
import 'package:duckcart_osama/shared/components/components.dart';
import 'package:duckcart_osama/shared/components/demo_lists.dart';
import 'package:duckcart_osama/shared/styles/colors.dart';
import 'package:duckcart_osama/shared/styles/fonts.dart';
import 'package:duckcart_osama/shared/styles/paddings.dart';
import 'package:duckcart_osama/shared/styles/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../donation_screen/binding.dart';

class AllCreatorsScreen extends StatefulWidget {
  const AllCreatorsScreen({Key? key}) : super(key: key);

  @override
  State<AllCreatorsScreen> createState() => _AllCreatorsScreenState();
}

class _AllCreatorsScreenState extends State<AllCreatorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Row(
          children: const [
            Image(
              image: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/25/25615.png'),
              width: 30,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text('T I O B U '),
          ],
        ),
        actions: [
          InkWell(
            onTap: () => Get.toNamed('/myDonationsScreen'),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://png.pngtree.com/element_our/20190604/ourlarge/pngtree-user-avatar-boy-image_1482937.jpg'),
              ),
            ),
          ),
        ],
      ),
      body: DuckPadding.mainDuckPadding(
        t: 4.0,
        l: 0.0,
        r: 0.0,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 4, left: 4),
                child: Text(
                  DuckStrings.recoCreators,
                  style: DuckTextStyles.duckHeadlines(),
                ),
              ),
              buildCreatorItem(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCreatorItem(context) {
  HomeController controller = Get.find();
  return SizedBox(
    child: GridView.count(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      childAspectRatio: 1.6 / 2,
      children: models
          .map(
            (item) => InkWell(
              splashColor: DuckColors.duckMainColor,
              onTap: () {
                Get.to(() => DonationScreen(creator: item.name, creatorURL: item.profileURL),binding: DonationScreenBinding());
              },
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 160,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            
                              image: NetworkImage(item.profileURL),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: '${item.name}\n',
                                  style: DuckTextStyles.duckHeadlines(fs: 15.0),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: item.profession,
                                        style: DuckTextStyles
                                            .duckHintMontserrat()),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              controller.changeFavColor(item.id);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Obx(() {
                                return Icon(
                                  Icons.favorite_border,
                                  color: controller.favorites[item.id] == true
                                      ? Colors.red
                                      : Colors.grey,
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    ),
  );
}

class FavorOrNot extends StatelessWidget {
  FavorOrNot({
    super.key,
  });

  HomeController faveController = Get.find();

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.favorite_border,
      color: Colors.red,
    );
  }
}
