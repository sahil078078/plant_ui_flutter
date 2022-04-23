import 'package:flutter/material.dart';
import 'package:plant_ui_flutter/constants.dart';
import 'package:plant_ui_flutter/screens/home/components/recomamded_plant.dart';
import 'package:plant_ui_flutter/screens/home/components/title_with_more_bbtn.dart';
import 'featured_plant_card.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // size it provide total height and with of the screen
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          const RecommedsdPlant(),
          TitleWithMoreBtn(title: 'Feature Plant', press: () {}),
          const FeaturedPlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
