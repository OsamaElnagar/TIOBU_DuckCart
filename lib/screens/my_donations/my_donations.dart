import 'package:duckcart_osama/shared/components/components.dart';
import 'package:duckcart_osama/shared/components/donation_card.dart';
import 'package:duckcart_osama/shared/styles/paddings.dart';
import 'package:flutter/material.dart';

import '../../shared/components/demo_lists.dart';

class MyDonationsScreen extends StatelessWidget {
  const MyDonationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donations'),
      ),
      body: DuckPadding.mainDuckPadding(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.indigo.withOpacity(.9),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.red,
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://www.thewowstyle.com/wp-content/uploads/2015/01/Be-Happy.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                        child : Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: duckHeadlines(headline: 'User name',color: Colors.white),
                        )),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: duckHeadlines(headline: 'Your Donations'),
              ),
              ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return DonationCard(
                    donationModel: demoDonations[index],
                    itemIndex: index,
                    press: () {},
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemCount: demoDonations.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
