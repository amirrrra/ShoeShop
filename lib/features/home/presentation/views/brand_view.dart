import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_cubit.dart';
import 'package:store/features/home/presentation/views/widgets/product_grid_widget.dart';
import 'package:store/features/home/presentation/views/widgets/sub_appbar_widget.dart';

class BrandView extends StatefulWidget {
  final String category;
  const BrandView({super.key, required this.category});

  @override
  State<BrandView> createState() => _BrandViewState();
}

class _BrandViewState extends State<BrandView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductCubit>(context).getProducts(
        category: widget.category,
        limit: 30,
        filter: 'BEST_MATCH',
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),
            SubAppbarWidget(title: widget.category),
            const SizedBox(height: 12),
            const Expanded(child: ProductGridWidget()),
          ],
        ),
      ),
    );
  }
}
