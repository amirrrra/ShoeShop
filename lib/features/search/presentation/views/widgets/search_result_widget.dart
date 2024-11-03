import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/widgets/loading_widget.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_state.dart';
import 'package:store/features/home/presentation/views/widgets/product_grid_widget.dart';
import 'package:store/features/search/presentation/views/widgets/search_noresult_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (BuildContext context, state) {
        if (state is ProductSuccessState) {
          return ProductGridWidget(
            itemCount: state.productList.length,
            productList: state.productList,
          );
        } else if (state is ProductFailureState) {
          return const SearchNoResultWidget();
        } else if (state is ProductLoadingState) {
          return const LoadingWidget();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
