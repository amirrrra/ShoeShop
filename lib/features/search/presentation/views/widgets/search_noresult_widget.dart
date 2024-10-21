import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';

class SearchNoResultWidget extends StatelessWidget {
  const SearchNoResultWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            Constants.ksearching,
            width: 50,
          ),
          const Text(
            'No results found',
            style: TextStyle(fontSize: 16, color: ColorPalette.kBlack),
          ),
          const Text(
            'Try different keywords',
            style: TextStyle(fontSize: 16, color: ColorPalette.kGrey7),
          ),
        ],
      ),
    );
  }
}
