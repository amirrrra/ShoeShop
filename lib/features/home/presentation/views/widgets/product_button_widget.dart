import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductButtonWidget extends StatelessWidget {
  final ProductModel productModel;

  const ProductButtonWidget({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: ColorPalette.kBlack,
        elevation: 8,
        fixedSize: const Size(double.infinity, 50),
        backgroundColor: ColorPalette.kBlack,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
      onPressed: () {
        launchLink(productModel.url ?? '');
      },
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

  Future<void> launchLink(String link) async {
    var url = Uri.parse(link);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception(("can't launch $url"));
    }
  }
}
