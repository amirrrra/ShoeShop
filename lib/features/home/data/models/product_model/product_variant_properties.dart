class ProductVariantProperties {
	String? size;
	String? color;

	ProductVariantProperties({this.size, this.color});

	factory ProductVariantProperties.fromJson(Map<String, dynamic> json) {
		return ProductVariantProperties(
			size: json['Size'] as String?,
			color: json['Color'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'Size': size,
				'Color': color,
			};
}
