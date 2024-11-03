import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/utils/color_palette.dart';
import 'package:store/features/home/data/models/brand_model.dart';
import 'package:store/features/home/presentation/view%20models/cubits/tab%20cubit/tab_cubit.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();

    // Get the initial index from the TabCubit
    final initialIndex = context.read<TabCubit>().state;
    _tabController = TabController(
      length: BrandsData.names.length,
      vsync: this,
      initialIndex: initialIndex,
    );

    // Trigger the onTap action for the initial tab
    WidgetsBinding.instance.addPostFrameCallback((_) {
      onTap(context, initialIndex);
    });

    // Listen for tab changes and update the cubit index
    _tabController?.addListener(() {
      if (_tabController!.indexIsChanging) return; // Avoids unnecessary state changes
      final newIndex = _tabController!.index;
      onTap(context, newIndex);
      context.read<TabCubit>().setCategoryIndex(newIndex);
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: BlocBuilder<TabCubit, int>(
        builder: (context, selectedIndex) {
          // Sync the TabController's index with the current selectedIndex
          if (_tabController != null && _tabController!.index != selectedIndex) {
            _tabController!.animateTo(selectedIndex);
          }
          return DefaultTabController(
            length: BrandsData.names.length,
            child: TabBar(
              controller: _tabController,
              tabs: getTabs(selectedIndex),
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

  void onTap(BuildContext context, int index) {
    BlocProvider.of<ProductCubit>(context).getProducts(
      category: BrandsData.names[index],
      limit: 10,
      filter: 'TOP_RATED',
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
