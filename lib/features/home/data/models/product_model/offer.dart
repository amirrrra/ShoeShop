class Offer {
	String? offerId;
	String? offerPageUrl;
	String? price;
	String? shipping;
	bool? onSale;
	dynamic originalPrice;
	String? productCondition;
	String? storeName;
	String? storeRating;
	int? storeReviewCount;
	String? storeReviewsPageUrl;
	String? couponDiscountPercent;
	String? paymentMethods;

	Offer({
		this.offerId, 
		this.offerPageUrl, 
		this.price, 
		this.shipping, 
		this.onSale, 
		this.originalPrice, 
		this.productCondition, 
		this.storeName, 
		this.storeRating, 
		this.storeReviewCount, 
		this.storeReviewsPageUrl, 
		this.couponDiscountPercent, 
		this.paymentMethods, 
	});

	factory Offer.fromJson(Map<String, dynamic> json) => Offer(
				offerId: json['offer_id'] as String?,
				offerPageUrl: json['offer_page_url'] as String?,
				price: json['price'] as String?,
				shipping: json['shipping'] as String?,
				onSale: json['on_sale'] as bool?,
				originalPrice: json['original_price'] as dynamic,
				productCondition: json['product_condition'] as String?,
				storeName: json['store_name'] as String?,
				storeRating: json['store_rating'] as String?,
				storeReviewCount: json['store_review_count'] as int?,
				storeReviewsPageUrl: json['store_reviews_page_url'] as String?,
				couponDiscountPercent: json['coupon_discount_percent'] as String?,
				paymentMethods: json['payment_methods'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'offer_id': offerId,
				'offer_page_url': offerPageUrl,
				'price': price,
				'shipping': shipping,
				'on_sale': onSale,
				'original_price': originalPrice,
				'product_condition': productCondition,
				'store_name': storeName,
				'store_rating': storeRating,
				'store_review_count': storeReviewCount,
				'store_reviews_page_url': storeReviewsPageUrl,
				'coupon_discount_percent': couponDiscountPercent,
				'payment_methods': paymentMethods,
			};
}
