import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/routes.dart';
import 'package:store/features/home/data/models/brand_model.dart';
import 'package:store/features/home/presentation/view%20models/cubits/tab%20cubit/tab_cubit.dart';
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
          // listens to the selected index 
          child: BlocBuilder<TabCubit, int>(
            builder: (buildContext, selectedIndex) {
              return HomeSubTitleWidget(
                baseTitle: 'Most Popular',
                // "See All Button" navigates to the selected Brand index
                onTap: () => GoRouter.of(context).push(
                  Routes.kPopular,
                  extra: BrandsData.names[selectedIndex],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 12),
        const TabbarWidget(),
        const SizedBox(height: 16),
      ],
    );
  }
}
