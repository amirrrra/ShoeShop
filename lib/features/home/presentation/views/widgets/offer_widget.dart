import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/core/utils/styles.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const Spacer(),
          Flexible(
            flex: 2,
            child: Image.asset(
              Constants.kShoe,
              width: 180,
              height: 180,
            ),
          )
        ],
      ),
    );
  }
}

