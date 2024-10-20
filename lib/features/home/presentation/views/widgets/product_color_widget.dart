import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';

class ProductColorWidget extends StatefulWidget {
  const ProductColorWidget({super.key});

  @override
  State<ProductColorWidget> createState() => _ProductColorWidgetState();
}

class _ProductColorWidgetState extends State<ProductColorWidget> {
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
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? ColorPalette.kBlack
                    : ColorPalette.kTransparent,
                border: Border.all(
                  width: 1.5,
                  color: selectedIndex == index
                      ? ColorPalette.kBlack
                      : ColorPalette.kGrey7,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
              child: CircleAvatar(
                backgroundColor: ColorPalette.kTransparent,
                child: Text(
                  '40',
                  style: TextStyle(
                    color: selectedIndex == index
                        ? ColorPalette.kWhite
                        : ColorPalette.kGrey7,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }
}
