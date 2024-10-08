import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/core/utils/styles.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: ColorPalette.kFGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
          ),
          child: Image.asset(
            Constants.kShoe,
            width: 120,
          ),
        ),
        const SizedBox(height: 6),
        const Text(
          'K-Swiss Vista Train...',
          style: Styles.style18Bold,
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            SvgPicture.asset(Constants.kStar),
            const SizedBox(width: 4),
            const Text(
              '4.5  (6,573 reviews)',
              style: TextStyle(
                color: ColorPalette.kGrey7,
                fontFamily: Constants.kUrwMed,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        const Text(
          r'$70.00',
          style: Styles.style18Bold,
        ),
      ],
    );
  }
}
