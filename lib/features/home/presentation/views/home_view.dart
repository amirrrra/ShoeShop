import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/brand_gridview_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_appbar_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_offers_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_popular_widget.dart';
import 'package:store/features/search/presentation/views/widgets/search_field_widget.dart';
import 'package:store/features/home/presentation/views/widgets/tabviews_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) {
            return [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      HomeAppBarWidget(),
                      SizedBox(height: 12),
                      SearchFieldWidget(),
                      SizedBox(height: 4),
                      HomeOffersWidget(),
                      SizedBox(height: 20),
                      BrandGridviewWidget(),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child:  HomePopularWidget()),
            ];
          },
          body: const TabviewsWidget(),
        ),
      ),
    );
  }
}
