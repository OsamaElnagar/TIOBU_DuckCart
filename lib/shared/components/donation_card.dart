import 'package:duckcart_osama/models/donation_model.dart';
import 'package:duckcart_osama/shared/components/components.dart';
import 'package:duckcart_osama/shared/components/demo_lists.dart';
import 'package:duckcart_osama/shared/styles/colors.dart';
import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  final int itemIndex;
  final DonationModel donationModel;
  final Function() press;

  const DonationCard(
      {super.key,
      required this.itemIndex,
      required this.donationModel,
      required this.press});

  @override
  Widget build(BuildContext context) {
    // It  will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 160,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: itemIndex.isEven ? Colors.pink : Colors.deepOrangeAccent,
                //boxShadow: const [],
              ),
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  color: DuckColors.duckMainColor,
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
            ),
            // our creator image
            Positioned(
              bottom: 0,
              left: 0,
              child:Container(
              height: 160,
              width: 160,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    donationModel.profileURL,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(22),
                color: Colors.red,
              ),
            ),
            ),
            // creator name and amount
            Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                height: 160,
                // our image take 200 width, thats why we set out total width - 200
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 5,),
                        CircleAvatar(backgroundColor:itemIndex.isEven ? Colors.pink : Colors.deepOrangeAccent,
                        radius: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 15),
                          child: SizedBox(width: 100,
                            child: duckHeadlines(
                              fs: 14.0,
                              headline:
                                  '${donationModel.creatorName} Mohammed Elngar ',
                              color: DuckColors.duckWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const SizedBox(width: 5,),
                        CircleAvatar(backgroundColor:itemIndex.isEven ? Colors.pink : Colors.deepOrangeAccent,
                        radius: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: duckHeadlines(
                            fs: 12.0,
                            headline:
                                '${donationModel.creatorProf} ',
                            color: DuckColors.duckWhite,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    // it use the available space
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15, // 30 padding
                          vertical: 15, // 5 top and bottom
                        ),

                        decoration:  BoxDecoration(
                          color: itemIndex.isEven ? Colors.pink : Colors.deepOrangeAccent,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(22),
                            topRight: Radius.circular(22),
                          ),
                        ),
                        child: duckNormalTexts(
                          norText: "\$${donationModel.amount}",
                          color: DuckColors.duckWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
