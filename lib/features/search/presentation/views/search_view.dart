import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';
import 'package:store/features/search/presentation/view%20models/cubits/filters%20cubit/filters_cubit.dart';
import 'package:store/features/search/presentation/views/widgets/search_field_widget.dart';
import 'package:store/features/search/presentation/views/widgets/search_result_widget.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<String> filters = [
    'BEST_MATCH',
    'TOP_RATED',
    'LOWEST_PRICE',
    'HIGHEST_PRICE'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FiltersCubit, int>(
          builder: (context, selectedIndex) {
            return NestedScrollView(
              headerSliverBuilder: (context, isScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: SearchFieldWidget(
                            autofocus: true,
                            onFieldSubmitted: (category) {
                              
                        
                              BlocProvider.of<ProductCubit>(context).getProducts(
                                category: category,
                                limit: 20,
                                filter: filters[selectedIndex],
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ),
                ];
              },
              body: const SearchResultWidget(),
            );
          },
        ),
      ),
    );
  }
}
