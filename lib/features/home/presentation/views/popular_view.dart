import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/widgets/failure_widget.dart';
import 'package:store/core/widgets/loading_widget.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_state.dart';
import 'package:store/features/home/presentation/views/widgets/sub_appbar_widget.dart';
import 'package:store/features/home/presentation/views/widgets/tabbar_widget.dart';
import 'package:store/features/home/presentation/views/widgets/tabviews_widget.dart';

class PopularView extends StatefulWidget {
  final String category;
  const PopularView({super.key, required this.category});

  @override
  State<PopularView> createState() => _PopularViewState();
}

class _PopularViewState extends State<PopularView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductCubit>(context).getProducts(
        category: widget.category,
        limit: 30,
        filter: 'TOP_RATED',
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              const SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    SubAppbarWidget(title: 'Most Popular'),
                    SizedBox(height: 12),
                    TabbarWidget(),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ];
          },
          body: BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              if (state is ProductSuccessState) {
                return TabviewsWidget();
              } else if (state is ProductFailureState) {
                return FailureWidget(errMessage: state.errMessage);
              } else if (state is ProductLoadingState) {
                return const LoadingWidget();
              } else {
                return const Icon(Icons.question_mark);
              }
            },
          ),
        ),
      ),
    );
  }
}
