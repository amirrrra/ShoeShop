import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';

class ProductRatingWidget extends StatelessWidget {
  const ProductRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: SvgPicture.asset(Constants.kStar),
        ),
        const SizedBox(width: 4),
        const Text(
          // '${(productModel.rating ?? 0).toString()}'
          // '  (${productModel.reviews ?? 0} reviews)',
          '4.7 (7424 reviews)',
          style: TextStyle(
            color: ColorPalette.kGrey7,
            fontFamily: Constants.kUrwMed,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

