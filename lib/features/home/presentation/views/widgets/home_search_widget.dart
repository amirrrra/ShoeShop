import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var focusNode = FocusNode();
    return SizedBox(
      height: 70,
      child: TextFormField(
        // autofocus: true,
        cursorColor: ColorPalette.kCGrey,
        cursorHeight: 22,
        cursorWidth: 1,
        focusNode: focusNode,
        onTapOutside: (event) => focusNode.unfocus(),
        style: const TextStyle(
          height: 1.4,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          fillColor: ColorPalette.kFGrey,
          filled: true,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey.withOpacity(.5),
            fontSize: 17,
            fontFamily: Constants().kUrwMed,
          ),
          prefixIcon: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              Constants().ksearch,
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(.6),
                BlendMode.srcIn,
              ),
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              Constants().kFilter,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }

  final outlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: ColorPalette.kTransparent),
    borderRadius: BorderRadius.all(Radius.circular(16)),
  );
}
