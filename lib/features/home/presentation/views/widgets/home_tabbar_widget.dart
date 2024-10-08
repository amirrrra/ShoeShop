import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/features/home/presentation/view%20models/models/brand_model.dart';

class HomeTabbarWidget extends StatelessWidget {
  const HomeTabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categories = [
      BrandsData.nike,
      BrandsData.adidas,
      BrandsData.jordan,
      BrandsData.puma,
      BrandsData.reebok,
      BrandsData.champion,
      BrandsData.converse,
      BrandsData.skechers,
      BrandsData.newbalance,
      BrandsData.fila,
      BrandsData.vans,
      BrandsData.asics,
    ];

    final tabs = categories
        .map(
          (item) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(width: 1.6),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
            child: Tab(
              text: item,
              height: 30,
            ),
          ),
        )
        .toList();

    return DefaultTabController(
      length: categories.length,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelPadding: const EdgeInsets.only(right: 12),
        // labelColor: ColorPalette.kWhite,
        unselectedLabelColor: ColorPalette.kBlack,
        indicatorColor: ColorPalette.kTransparent,
        overlayColor: WidgetStateProperty.all(ColorPalette.kTransparent),
        dividerColor: Colors.transparent,
      ),
    );
  }
}
