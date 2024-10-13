import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/product_widget.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 30,
        mainAxisExtent: 268,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return const ProductWidget(
            // productModel: state.productList[index],
            );
      },
    );
    // return BlocBuilder<ProductCubit, ProductState>(
    //   builder: (context, state) {
    //     if (state is ProductSuccessState) {
    //       return GridView.builder(
    //         physics: const NeverScrollableScrollPhysics(),
    //         itemCount: 20,
    //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //           crossAxisCount: 2,
    //           crossAxisSpacing: 20,
    //           mainAxisExtent: 268,
    //           childAspectRatio: 1,
    //         ),
    //         itemBuilder: (BuildContext context, int index) {
    //           return ProductWidget(
    //             productModel: state.productList[index],
    //           );
    //         },
    //       );
    //     } else if (state is ProductFailureState) {
    //       return FailureWidget(errMessage: state.errMessage);
    //     } else if (state is ProductLoadingState) {
    //       return const LoadingWidget();
    //     } else {
    //       return const Icon(Icons.question_mark);
    //     }
    //   },
    // );
  }
}
