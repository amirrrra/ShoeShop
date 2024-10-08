import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/styles.dart';

class HomeOffersWidget extends StatelessWidget {
  const HomeOffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Special Offers',
              style: Styles.style20Bold,
            ),
            Text(
              'See All',
              style: Styles.style16Bold,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.only(left: 25, top: 25, bottom: 25),
          height: 136,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: ColorPalette.kBlueLogo,
            borderRadius: BorderRadius.all(Radius.circular(35)),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '25%',
                    style: Styles.style36Bold,
                  ),
                  Text(
                    "Today's Special!",
                    style: Styles.style20Bold.copyWith(
                      color: ColorPalette.kWhite,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Flexible(
                flex: 2,
                child: Image.asset(
                  'assets/pics/shoes.png',
                  width: 180,
                  height: 180,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
