import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/brand_gridview_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_appbar_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_offers_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_popular_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_search_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_grid_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SizedBox(height: 16),
                    const HomeAppBarWidget(),
                    const SizedBox(height: 20),
                    const HomeSearchWidget(),
                    const SizedBox(height: 8),
                    const HomeOffersWidget(),
                    const SizedBox(height: 20),
                    const BrandGridviewWidget(),
                    const HomePopularWidget(),
                  ],
                ),
              ),
              const ProductGridviewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
