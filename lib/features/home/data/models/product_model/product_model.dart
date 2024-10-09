import 'offer.dart';
import 'product_variant_properties.dart';
import 'product_variants.dart';

class ProductModel {
  String? productId;
  String? productTitle;
  String? productDescription;
  List<String>? productPhotos;
  double? productRating;
  String? productPageUrl;
  String? productOffersPageUrl;
  String? productSpecsPageUrl;
  String? productReviewsPageUrl;
  String? productPageUrlV2;
  int? productNumReviews;
  String? productNumOffers;
  List<String>? typicalPriceRange;
  ProductVariantProperties? productVariantProperties;
  ProductVariants? productVariants;
  Offer? offer;

  ProductModel({
    this.productId,
    this.productTitle,
    this.productDescription,
    this.productPhotos,
    this.productRating,
    this.productPageUrl,
    this.productOffersPageUrl,
    this.productSpecsPageUrl,
    this.productReviewsPageUrl,
    this.productPageUrlV2,
    this.productNumReviews,
    this.productNumOffers,
    this.typicalPriceRange,
    this.productVariantProperties,
    this.productVariants,
    this.offer,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        productId: json['product_id'] as String?,
        productTitle: json['product_title'] as String?,
        productDescription: json['product_description'] as String?,
        productPhotos: json['product_photos'] as List<String>?,
        productRating: (json['product_rating'] as num?)?.toDouble(),
        productPageUrl: json['product_page_url'] as String?,
        productOffersPageUrl: json['product_offers_page_url'] as String?,
        productSpecsPageUrl: json['product_specs_page_url'] as String?,
        productReviewsPageUrl: json['product_reviews_page_url'] as String?,
        productPageUrlV2: json['product_page_url_v2'] as String?,
        productNumReviews: json['product_num_reviews'] as int?,
        productNumOffers: json['product_num_offers'] as String?,
        typicalPriceRange: json['typical_price_range'] as List<String>?,
        productVariantProperties: json['product_variant_properties'] == null
            ? null
            : ProductVariantProperties.fromJson(
                json['product_variant_properties'] as Map<String, dynamic>),
        productVariants: json['product_variants'] == null
            ? null
            : ProductVariants.fromJson(
                json['product_variants'] as Map<String, dynamic>),
        offer: json['offer'] == null
            ? null
            : Offer.fromJson(json['offer'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'product_id': productId,
        'product_title': productTitle,
        'product_description': productDescription,
        'product_photos': productPhotos,
        'product_rating': productRating,
        'product_page_url': productPageUrl,
        'product_offers_page_url': productOffersPageUrl,
        'product_specs_page_url': productSpecsPageUrl,
        'product_reviews_page_url': productReviewsPageUrl,
        'product_page_url_v2': productPageUrlV2,
        'product_num_reviews': productNumReviews,
        'product_num_offers': productNumOffers,
        'typical_price_range': typicalPriceRange,
        'product_variant_properties': productVariantProperties?.toJson(),
        'product_variants': productVariants?.toJson(),
        'offer': offer?.toJson(),
      };
}
