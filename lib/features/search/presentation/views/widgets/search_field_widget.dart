import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/core/utils/constants.dart';
import 'package:store/features/search/presentation/views/widgets/filter_widget.dart';

class SearchFieldWidget extends StatelessWidget {
  final void Function()? onTap;
  final bool autofocus;
  const SearchFieldWidget({super.key, this.autofocus = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    var focusNode = FocusNode();
    return SizedBox(
      height: 70,
      child: TextFormField(
        onTap: onTap,
        autofocus: autofocus,
        readOnly: !autofocus,
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
          fillColor: ColorPalette.kEGrey,
          filled: true,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey.withOpacity(.5),
            fontSize: 17,
            fontFamily: Constants.kUrwMed,
          ),
          prefixIcon: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              Constants.ksearch,
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                Colors.grey.withOpacity(.6),
                BlendMode.srcIn,
              ),
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              FilterWidget().showModal(context);
            },
            child: SvgPicture.asset(
              Constants.kFilter,
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
