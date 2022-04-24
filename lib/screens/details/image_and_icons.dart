import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'icon_card.dart';
class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding*3),
      child: SizedBox(
        height: size.height * 0.80,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding * 3.0),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset(
                              'assets/icons/back_arrow.svg')),
                    ),
                    const Spacer(),
                    const IconCard(icon: 'assets/icons/sun.svg'),
                    const IconCard(icon: 'assets/icons/icon_2.svg'),
                    const IconCard(icon: 'assets/icons/icon_3.svg'),
                    const IconCard(icon: 'assets/icons/icon_4.svg'),
                  ],
                ),
              ),
            ),
            Container(

              height: size.height * 0.80,
              width: size.width * 0.75,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/img.png'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color(0xffceedce),
                    blurRadius: 35,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  bottomLeft: Radius.circular(60),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}