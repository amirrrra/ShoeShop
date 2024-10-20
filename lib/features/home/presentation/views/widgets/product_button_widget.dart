import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/core/utils/styles.dart';

class ProductButtonWidget extends StatelessWidget {
  const ProductButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor:ColorPalette.kBlack,
        elevation:8,
        fixedSize: const Size(double.infinity, 50),
        backgroundColor: ColorPalette.kBlack,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(Constants.kCart),
          const SizedBox(width: 16),
          Text(
            'Checkout',
            style: Styles.style18.copyWith(
                color: ColorPalette.kWhite, fontFamily: Constants.kUrwMed),
          ),
        ],
      ),
    );
  }
}
