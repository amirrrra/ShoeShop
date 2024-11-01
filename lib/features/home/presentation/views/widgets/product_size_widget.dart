import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';

class ProductSizeWidget extends StatefulWidget {
  final ProductModel productModel;

  const ProductSizeWidget({super.key, required this.productModel});

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
        itemCount: (widget.productModel.productVariants.sizes?.length ?? 1)-1,
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
                  widget.productModel.productVariants.sizes?[index+1].value??'',
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
          return const SizedBox(width: 8);
        },
      ),
    );
  }
}
