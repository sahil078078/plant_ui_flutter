import 'package:flutter/material.dart';

import '../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.county,
    required this.price,
  }) : super(key: key);
  final String title, county;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: '$title\n',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold, color: kTextColor)),
                TextSpan(
                    text: county.toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: kPrimaryColor,
                    )),
              ],
            ),
          ),
          const Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.headline5!.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}