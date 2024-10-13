import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/features/home/data/models/brand_model.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => TabbarWidgetState();
}

class TabbarWidgetState extends State<TabbarWidget> {
  int selectedIndex = 0;

  @override
  void initState() {
    onTap(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: DefaultTabController(
        length: TabbarWidgetState().categories.length,
        child: TabBar(
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
        ),
      ),
    );
  }

  onTap(int index) {
    BlocProvider.of<ProductCubit>(context).getProducts(
      categories[index],
    );

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
