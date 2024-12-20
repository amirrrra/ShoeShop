import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/features/home/data/models/brand_model.dart';

class BrandWidget extends StatelessWidget {
  final void Function() onTap;
  final BrandModel brandModel;
  const BrandWidget({super.key, required this.brandModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorPalette.kEGrey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(brandModel.logo),
            ),
          ),
          const SizedBox(height: 8),
          Flexible(
            child: Text(
              brandModel.name,
              style: const TextStyle(
                fontSize: 14,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
