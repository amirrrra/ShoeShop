import 'package:flutter/material.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';
import 'package:store/features/home/presentation/views/widgets/product_button_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_color_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_description_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_rating_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_size_widget.dart';

class ProductDetailsWidget extends StatelessWidget {
  final ProductModel productModel;

  const ProductDetailsWidget({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Text(
            productModel.title,
            style: Styles.style32,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          ProductRatingWidget(
            productModel: productModel,
          ),
          const SizedBox(height: 2),
          const Divider(),
          const SizedBox(height: 2),
          const Text(
            'Description',
            style: Styles.style20,
          ),
          ProductDescriptionWidget(
            productModel: productModel,
          ),
          const SizedBox(height: 8),
          const Text(
            'Size',
            style: Styles.style20,
          ),
          ProductSizeWidget(
            productModel: productModel,
          ),
          const SizedBox(height: 8),
          const Text('Colors', style: Styles.style20),
          ProductColorWidget(
            productModel: productModel,
          ),
          const SizedBox(height: 10),
          const Divider(),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('Price', style: Styles.style14),
                  Text(
                    productModel.offer?.price ?? 'Unknown',
                    style: Styles.style22,
                  ),
                ],
              ),
              const SizedBox(width: 32),
              const Expanded(child: ProductButtonWidget())
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
