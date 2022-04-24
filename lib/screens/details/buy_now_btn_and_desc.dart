import 'package:flutter/material.dart';

import '../../constants.dart';
class BuyNowBtnAndDesc extends StatelessWidget {
  const BuyNowBtnAndDesc({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 84,
          width: size.width / 2,
          child: TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  kPrimaryColor.withOpacity(0.8),
                )),
            onPressed: () {},
            child: const Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text('Description'),
          ),
        ),
        const SizedBox(height: kDefaultPadding*2),
      ],
    );
  }
}