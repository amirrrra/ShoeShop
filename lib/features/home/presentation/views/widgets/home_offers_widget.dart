import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/widgets/failure_widget.dart';
import 'package:store/core/widgets/loading_widget.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_state.dart';
import 'package:store/features/home/presentation/views/widgets/home_subtitle_widget.dart';
import 'package:store/features/home/presentation/views/widgets/offer_widget.dart';

class HomeOffersWidget extends StatelessWidget {
  const HomeOffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeSubTitleWidget(baseTitle: 'Special Offers'),
        const SizedBox(height: 12),
        BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductSuccessState) {
              return OfferWidget(productModel: state.productList.last);
            } else if (state is ProductFailureState) {
              return FailureWidget(errMessage: state.errMessage);
            } else if (state is ProductLoadingState) {
              return const LoadingWidget();
            } else {
              return const Icon(Icons.question_mark);
            }
          },
        ),
      ],
    );
  }
}
