import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/product_grid_widget.dart';
import 'package:store/features/home/presentation/views/widgets/sub_appbar_widget.dart';

class BrandView extends StatelessWidget {
  const BrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 12),
            SubAppbarWidget(title: 'Nike'),
            SizedBox(height: 12),
            Expanded(child: ProductGridWidget()),
          ],
        ),
      ),
    );
  }
}
