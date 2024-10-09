import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/brand_gridview_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_appbar_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_offers_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_popular_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_search_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_tabviews_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: NestedScrollView(
            headerSliverBuilder: (context, isScrolled) {
              return [
                const SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      HomeAppBarWidget(),
                      SizedBox(height: 12),
                      HomeSearchWidget(),
                      SizedBox(height: 4),
                      HomeOffersWidget(),
                      SizedBox(height: 20),
                      BrandGridviewWidget(),
                      HomePopularWidget(),
                    ],
                  ),
                ),
              ];
            },
            body: const HomeTabviewsWidget(),
          ),
        ),
      ),
    );
  }
}
