import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/features/home/data/models/brand_model.dart';
import 'package:store/features/home/presentation/view%20models/cubits/tab%20cubit/tab_cubit.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: BlocBuilder<TabCubit, int>(
        builder: (context, selectedIndex) {
          return DefaultTabController(
            initialIndex: selectedIndex,
            length: BrandsData.names.length,
            child: TabBar(
              tabs: getTabs(selectedIndex),
              onTap: (index) {
                // trigger ProductCubit
                BlocProvider.of<ProductCubit>(context).getProducts(
                  category: BrandsData.names[index],
                  limit: 10,
                  filter: 'TOP_RATED',
                );
                // trigger TabCubit == update cubit index
                context.read<TabCubit>().setCategoryIndex(index);
              },
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelPadding: const EdgeInsets.only(right: 12),
              labelColor: ColorPalette.kWhite,
              unselectedLabelColor: ColorPalette.kBlack,
              indicatorColor: ColorPalette.kTransparent,
              overlayColor: WidgetStateProperty.all(ColorPalette.kTransparent),
              dividerColor: Colors.transparent,
            ),
          );
        },
      ),
    );
  }

  List<Widget> getTabs(int selectedIndex) {
    return List.generate(
      BrandsData.names.length,
      (index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: selectedIndex == index
                ? ColorPalette.kBlack
                : ColorPalette.kTransparent,
            border: Border.all(width: 1.6),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          child: Tab(
            text: BrandsData.names[index],
            height: 30,
          ),
        );
      },
    );
  }
}
