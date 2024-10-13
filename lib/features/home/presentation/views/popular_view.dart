import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/sub_appbar_widget.dart';
import 'package:store/features/home/presentation/views/widgets/tabbar_widget.dart';
import 'package:store/features/home/presentation/views/widgets/tabviews_widget.dart';

class PopularView extends StatelessWidget {
  const PopularView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 12),
            SubAppbarWidget(title: 'Most Popular'),
            SizedBox(height: 12),
            TabbarWidget(),
            SizedBox(height: 16),
            Expanded(child: TabviewsWidget()),
          ],
        ),
      ),
    );
  }
}
