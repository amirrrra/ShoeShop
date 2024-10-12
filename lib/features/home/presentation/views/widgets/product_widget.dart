import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';

class ProductWidget extends StatelessWidget {
  final ProductModel productModel;
  const ProductWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: ColorPalette.kFGrey,
            borderRadius: BorderRadius.all(Radius.circular(28)),
          ),
          child: Image.network(
            productModel.photo,
            width: 120,
            height: 120,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          productModel.title,
          style: Styles.style18,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Row(
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
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          '${productModel.offer?.originalPrice ?? r'$0'}',
          style: Styles.style18,
        ),
      ],
    );
  }
}
