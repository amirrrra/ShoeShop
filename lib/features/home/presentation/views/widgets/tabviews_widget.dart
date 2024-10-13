import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/tabbar_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_grid_widget.dart';

class TabviewsWidget extends StatelessWidget {
  const TabviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TabbarWidgetState().categories.length,
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        children: TabbarWidgetState()
            .categories
            .map(
              (item) => const ProductGridWidget(),
            )
            .toList(),
      ),
    );
  }
}
