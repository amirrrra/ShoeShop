import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/core/utils/styles.dart';

class SubAppbarWidget extends StatelessWidget {
  final String title;
  const SubAppbarWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: ColorPalette.kBlack,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            title,
            style: Styles.style24,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Constants.ksearch,
              // fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    );
  }
}
