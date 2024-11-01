class Offer {
  String? offerId;
  String? offerPageUrl;
  String? price;
  String? storeReviewsPageUrl;
  String? couponDiscountPercent;

  Offer({
    this.offerId,
    this.offerPageUrl,
    this.price,
    this.storeReviewsPageUrl,
    this.couponDiscountPercent,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        offerId: json['offer_id'],
        offerPageUrl: json['offer_page_url'],
        price: json['price'],
        storeReviewsPageUrl: json['store_reviews_page_url'],
        couponDiscountPercent: json['coupon_discount_percent'],
      );

  Map<String, dynamic> toJson() => {
        'offer_id': offerId,
        'offer_page_url': offerPageUrl,
        'price': price,
        'store_reviews_page_url': storeReviewsPageUrl,
        'coupon_discount_percent': couponDiscountPercent,
      };
}
