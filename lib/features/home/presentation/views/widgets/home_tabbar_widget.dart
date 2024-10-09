import 'package:flutter/material.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/features/home/data/models/brand_model.dart';

class HomeTabbarWidget extends StatefulWidget {
  const HomeTabbarWidget({super.key});

  @override
  State<HomeTabbarWidget> createState() => HomeTabbarWidgetState();
}

class HomeTabbarWidgetState extends State<HomeTabbarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: getTabs(),
      onTap: (index) {
        onTap(index);
      },
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      labelPadding: const EdgeInsets.only(right: 12),
      labelColor: ColorPalette.kWhite,
      unselectedLabelColor: ColorPalette.kBlack,
      indicatorColor: ColorPalette.kTransparent,
      overlayColor: WidgetStateProperty.all(ColorPalette.kTransparent),
      dividerColor: Colors.transparent,
    );
  }

  onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<String> get categories {
    return [
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
  }

  List<Widget> getTabs() {
    return List.generate(categories.length, (index) {
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
          text: categories[index],
          height: 30,
        ),
      );
    });
  }
}
