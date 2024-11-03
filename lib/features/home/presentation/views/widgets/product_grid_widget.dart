import 'package:flutter/material.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';
import 'package:store/features/home/presentation/views/widgets/product_widget.dart';

class ProductGridWidget extends StatelessWidget {
  final int itemCount;
  final List<ProductModel> productList;
  const ProductGridWidget({
    super.key,
    required this.itemCount,
    required this.productList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisExtent: 268,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return ProductWidget(
          productModel: productList[index],
        );
      },
    );
  }
}

