import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/widgets/failure_widget.dart';
import 'package:store/core/widgets/loading_widget.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_state.dart';
import 'package:store/features/home/presentation/views/widgets/offer_widget.dart';

class OffersListViewWidget extends StatefulWidget {
  const OffersListViewWidget({
    super.key,
  });

  @override
  State<OffersListViewWidget> createState() => _OffersListViewWidgetState();
}

class _OffersListViewWidgetState extends State<OffersListViewWidget> {
  @override
  void initState() {
    BlocProvider.of<ProductCubit>(context).getProducts(
      category: 'Nike',
      limit: 20,
      filter: 'LOWEST_PRICE',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccessState) {
          return ListView.builder(
            itemCount: state.productList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    OfferWidget(
                      productModel: state.productList[index],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              );
            },
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
