import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/widgets/failure_widget.dart';
import 'package:store/core/widgets/loading_widget.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_state.dart';
import 'package:store/features/home/presentation/views/widgets/product_grid_widget.dart';

class ProductResultWidget extends StatelessWidget {
  const ProductResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccessState) {
          return ProductGridWidget(
            itemCount: state.productList.length,
            productList: state.productList,
          );
        } else if (state is ProductFailureState) {
          return FailureWidget(errMessage: state.errMessage);
        } else if (state is ProductLoadingState) {
          return const LoadingWidget();
        } else {
          return const Icon(Icons.question_mark);
        }
      },
    );
  }
}
