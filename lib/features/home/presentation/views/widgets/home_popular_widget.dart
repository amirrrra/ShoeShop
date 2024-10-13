import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/routes.dart';
import 'package:store/features/home/presentation/views/widgets/home_subtitle_widget.dart';
import 'package:store/features/home/presentation/views/widgets/tabbar_widget.dart';

class HomePopularWidget extends StatelessWidget {
  const HomePopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: HomeSubTitleWidget(
            baseTitle: 'Most Popular',
            onTap: () => GoRouter.of(context).push(Routes.kPopular),
          ),
        ),
        const SizedBox(height: 12),
        const TabbarWidget(),
        const SizedBox(height: 16),
      ],
    );
  }
}
