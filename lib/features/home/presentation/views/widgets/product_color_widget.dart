import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';

class ProductColorWidget extends StatefulWidget {
  final ProductModel productModel;

  const ProductColorWidget({super.key, required this.productModel});

  @override
  State<ProductColorWidget> createState() => _ProductColorWidgetState();
}

class _ProductColorWidgetState extends State<ProductColorWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var colorsList = widget.productModel.productVariants.colors;
    return SizedBox(
      height: 40,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: (colorsList?.length ?? 1) - 1,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage:
                  NetworkImage(colorsList?[index + 1].thumbnail ?? ''),
              child: selectedIndex == index
                  ? const Icon(
                      Icons.check_rounded,
                      color: ColorPalette.kBlueLogo,
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
