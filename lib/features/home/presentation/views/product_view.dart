import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/views/widgets/product_details_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_image_widget.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductImageWidget(),
              ProductDetailsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

