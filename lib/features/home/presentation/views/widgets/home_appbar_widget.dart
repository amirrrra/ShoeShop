import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/constants.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Constants().kLogo,
          width: 40,
        ),
        const Text(
          'ShoeShop',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: 3,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(Constants().ksearch),
        ),
      ],
    );
  }
}
