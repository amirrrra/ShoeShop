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
    onTap(selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: DefaultTabController(
        length: BrandsData.names.length,
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
      category: BrandsData.names[index],
      limit: 10,
      filter: 'TOP_RATED',
    );

    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> getTabs() {
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
