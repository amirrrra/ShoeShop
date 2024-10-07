import 'package:flutter/material.dart';
import 'package:store/core/utils/constants.dart';

class HomeOffersWidget extends StatelessWidget {
  const HomeOffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Special Offers',
              style: TextStyle(
                fontSize: 20,
                fontFamily: Constants().kUrwBold,
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                fontSize: 16,
                fontFamily: Constants().kUrwBold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
