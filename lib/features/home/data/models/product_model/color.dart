class Color {
	String? value;
	String? productId;
	String? thumbnail;

	Color({this.value, this.productId, this.thumbnail});

	factory Color.fromJson(Map<String, dynamic> json) => Color(
				value: json['value'] as String?,
				productId: json['product_id'] as String?,
				thumbnail: json['thumbnail'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'value': value,
				'product_id': productId,
				'thumbnail': thumbnail,
			};
}
