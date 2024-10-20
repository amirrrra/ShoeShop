import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';

class ProductSizeWidget extends StatefulWidget {
  const ProductSizeWidget({super.key});

  @override
  State<ProductSizeWidget> createState() => _ProductSizeWidgetState();
}

class _ProductSizeWidgetState extends State<ProductSizeWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: ColorPalette.kBlueLogo,
              child: selectedIndex == index
                  ? const Icon(
                      Icons.check_rounded,
                      color: ColorPalette.kWhite,
                    )
                  : const SizedBox(),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}
