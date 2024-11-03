import 'package:flutter/material.dart';
import 'package:store/features/home/data/models/brand_model.dart';
import 'package:store/features/home/presentation/views/widgets/product_result_widget.dart';

class TabviewsWidget extends StatelessWidget {
  const TabviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: BrandsData.names.length,
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        children: BrandsData.names
            .map(
              (item) => const ProductResultWidget(),
            )
            .toList(),
      ),
    );
  }
}
