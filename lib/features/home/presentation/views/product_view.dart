import 'package:flutter/material.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';
import 'package:store/features/home/presentation/views/widgets/product_details_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_image_widget.dart';

class ProductView extends StatelessWidget {
  final ProductModel productModel;

  const ProductView({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductImageWidget(
                productModel: productModel,
              ),
              ProductDetailsWidget(
                productModel: productModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
