import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_ui_flutter/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommedsdPlant extends StatelessWidget {
  const RecommedsdPlant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommedPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            price: 440,
            country: 'russia',
            press: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
          RecommedPlantCard(
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            price: 450,
            country: 'russia',
            press: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
          RecommedPlantCard(
            image: 'assets/images/image_3.png',
            title: 'Samantha',
            price: 430,
            country: 'russia',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecommedPlantCard extends StatelessWidget {
  const RecommedPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      // it will take 40% of total width
      width: size.width * 0.40,
      // color: Colors.black26,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: () {
              press();
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n',
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
