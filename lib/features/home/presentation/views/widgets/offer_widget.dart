import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/routes.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';

class OfferWidget extends StatelessWidget {
  final ProductModel productModel;
  const OfferWidget({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    var percent = productModel.offer?.couponDiscountPercent ?? 'Off';
    var discount = percent.length >= 3 ? percent.substring(0, 3) : percent;

    return GestureDetector(
      onTap: () => GoRouter.of(context).push(
        Routes.kProduct,
        extra: productModel,
      ),
      child: Container(
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
                Text(
                  discount,
                  style: Styles.style36,
                ),
                Text(
                  "Today's Special!",
                  style: Styles.style20.copyWith(
                    color: ColorPalette.kWhite,
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.network(
                  productModel.photo,
                  width: 180,
                  height: 180,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
