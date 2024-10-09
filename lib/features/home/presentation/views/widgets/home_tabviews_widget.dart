import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/home_tabbar_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_grid_widget.dart';

class HomeTabviewsWidget extends StatelessWidget {
  const HomeTabviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: HomeTabbarWidgetState().categories.length,
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        children: HomeTabbarWidgetState()
            .categories
            .map(
              (item) => const ProductGridWidget(),
            )
            .toList(),
      ),
    );
  }
}
