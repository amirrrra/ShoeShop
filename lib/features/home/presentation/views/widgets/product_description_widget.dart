import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/styles.dart';

class ProductDescriptionWidget extends StatelessWidget {
  const ProductDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ReadMoreText(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque scelerisque efficitur posuere. Curabitur tincidunt placerat diam ac efficitur. Cras rutrum egestas nisl vitae pulvinar. Donec id mollis diam, id hendrerit neque. Donec accumsan efficitur libero, vitae feugiat odio fringilla ac. Aliquam a turpis bibendum, varius erat dictum, feugiat libero. Nam et dignissim nibh. Morbi elementum varius elit, at dignissim ex accumsan a',
      style: Styles.style14,
      trimLines: 1,
      trimLength: 100,
      trimCollapsedText: 'view more',
      trimExpandedText: ' ..view less',
      moreStyle: TextStyle(color: ColorPalette.kBlack),
      lessStyle: TextStyle(color: ColorPalette.kBlack),
    );
  }
}