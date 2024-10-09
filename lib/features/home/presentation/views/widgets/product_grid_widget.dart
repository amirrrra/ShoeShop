import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/product_widget.dart';

class ProductGridviewWidget extends StatelessWidget {
  const ProductGridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisExtent: 268,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const ProductWidget();
      },
    );
  }
}
