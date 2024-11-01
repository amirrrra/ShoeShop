import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';

class ProductDescriptionWidget extends StatelessWidget {
  final ProductModel productModel;

  const ProductDescriptionWidget({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      productModel.description ?? '',
      style: Styles.style14,
      trimLines: 1,
      trimLength: 100,
      trimCollapsedText: 'view more',
      trimExpandedText: ' ..view less',
      moreStyle: const TextStyle(color: ColorPalette.kBlack),
      lessStyle: const TextStyle(color: ColorPalette.kBlack),
    );
  }
}
