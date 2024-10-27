import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/routes.dart';
import 'package:store/features/home/presentation/view%20models/cubits/category%20cubit/category_cubit.dart';
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
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      const HomeAppBarWidget(),
                      const SizedBox(height: 12),
                      SearchFieldWidget(
                        onTap: () => GoRouter.of(context).push(Routes.kSearch),
                      ),
                      const SizedBox(height: 4),
                      const HomeOffersWidget(),
                      const SizedBox(height: 20),
                      const BrandGridviewWidget(),
                    ],
                  ),
                ),
              ),
               SliverToBoxAdapter(child: BlocProvider(
                  create: (context) => CategoryCubit(),
                  child: const HomePopularWidget(),
                ),),
            ];
          },
          body: const TabviewsWidget(),
        ),
      ),
    );
  }
}
