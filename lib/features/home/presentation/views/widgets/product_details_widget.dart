import 'package:flutter/material.dart';
import 'package:store/core/utils/styles.dart';
import 'package:store/features/home/presentation/views/widgets/product_button_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_color_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_description_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_rating_widget.dart';
import 'package:store/features/home/presentation/views/widgets/product_size_widget.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12),
          Text(
            'Running Sportwear',
            style: Styles.style32,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4),
          ProductRatingWidget(),
          SizedBox(height: 2),
          Divider(),
          SizedBox(height: 2),
          Text(
            'Description',
            style: Styles.style20,
          ),
          ProductDescriptionWidget(),
          SizedBox(height: 8),
          Text(
            'Color',
            style: Styles.style20,
          ),
          ProductSizeWidget(),
          SizedBox(height: 8),
          Text('Size', style: Styles.style20),
          ProductColorWidget(),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Price', style: Styles.style14),
                  Text(
                    // '${productModel.offer?.originalPrice ?? r'$0'}',
                    r'$120',
                    style: Styles.style22,
                  ),
                ],
              ),
              SizedBox(width: 32),
              Expanded(child: ProductButtonWidget())
            ],
          ),
        ],
      ),
    );
  }
}

