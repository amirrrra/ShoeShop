import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';

class ProductRatingWidget extends StatelessWidget {
  final ProductModel productModel;

  const ProductRatingWidget({
    super.key,
    required this.productModel,
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
        Text(
          '${(productModel.rating ?? 0).toString()}'
          '  (${productModel.reviews ?? 0} reviews)',
          style: const TextStyle(
            color: ColorPalette.kGrey7,
            fontFamily: Constants.kUrwMed,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
