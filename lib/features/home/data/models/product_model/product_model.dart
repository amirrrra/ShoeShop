import 'product_variants.dart';

import 'offer.dart';

class ProductModel {
  final String id;
  final String title;
  final String? description;
  final String photo;
  final double? rating;
  final String? url;
  final int? reviews;
  final Offer? offer;
  final ProductVariants productVariants;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.photo,
    required this.rating,
    required this.url,
    required this.reviews,
    required this.offer,
    required this.productVariants,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['product_id'],
        title: json['product_title'],
        description: json['product_description'],
        photo: json['product_photos'][0],
        rating: (json['product_rating'] as num?)?.toDouble(),
        url: json['product_page_url'],
        reviews: json['product_num_reviews'],
        offer: json['offer'] == null ? null : Offer.fromJson(json['offer']),
        productVariants: ProductVariants.fromJson(json['product_variants']),
      );

  Map<String, dynamic> toJson() => {
        'product_id': id,
        'product_title': title,
        'product_description'[0]: description,
        'product_photos': photo,
        'product_rating': rating,
        'product_page_url': url,
        'product_num_reviews': reviews,
        'offer': offer?.toJson(),
        'product_variants': productVariants.toJson(),
      };
}
