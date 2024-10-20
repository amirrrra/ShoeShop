import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';

class ProductImageWidget extends StatelessWidget {
  const ProductImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          color: ColorPalette.kFGrey,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () => GoRouter.of(context).pop(),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: ColorPalette.kBlack,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 2.6 / 7,
          width: double.infinity,
          padding: const EdgeInsets.all(40),
          decoration: const BoxDecoration(
            color: ColorPalette.kFGrey,
          ),
          child: Image.asset(
            Constants.kShoe,
          ),
        ),
      ],
    );
  }
}
