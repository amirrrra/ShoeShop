import 'package:store/features/home/data/models/product_model/sizes.dart';
import 'package:store/features/home/data/models/product_model/colors.dart';

class ProductVariants {
  final List<Colors>? colors;
  final List<Sizes>? sizes;

  ProductVariants({required this.colors, required this.sizes});

  factory ProductVariants.fromJson(json) {
    return ProductVariants(
      colors: (json['Color'] as List<dynamic>?)
          ?.map(
            (item) => Colors.fromJson(item),
          )
          .toList(),
      sizes: (json['Size'] as List<dynamic>?)
          ?.map(
            (item) => Sizes.fromJson(item),
          )
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'Color': colors?.map((item)=>item.toJson()).toList(),
        'Size': sizes?.map((item)=>item.toJson()).toList(),
      };
}
