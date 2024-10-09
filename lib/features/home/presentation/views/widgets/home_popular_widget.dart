import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/home_subtitle_widget.dart';
import 'package:store/features/home/presentation/views/widgets/home_tabbar_widget.dart';

class HomePopularWidget extends StatelessWidget {
  const HomePopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: HomeTabbarWidgetState().categories.length,
      child: const Column(
        children: [
          HomeSubTitleWidget(baseTitle: 'Most Popular'),
          SizedBox(height: 12),
          HomeTabbarWidget(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
