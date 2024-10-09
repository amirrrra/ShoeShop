import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:store/features/home/presentation/views/widgets/product_widget.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
        itemCount: 20,
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
