import 'package:flutter/material.dart';
import 'package:plant_ui_flutter/constants.dart';
import 'package:plant_ui_flutter/screens/details/title_and_price_cart.dart';
import 'buy_now_btn_and_desc.dart';
import 'image_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: const [
          ImageAndIcons(),
          TitleAndPrice(
            title: 'Angelica',
            county: 'Russia',
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          BuyNowBtnAndDesc(),
        ],
      ),
    );
  }
}


