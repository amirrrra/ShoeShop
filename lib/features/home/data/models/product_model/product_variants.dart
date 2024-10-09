import 'availability.dart';
import 'color.dart';
import 'size.dart';

class ProductVariants {
	List<Size>? size;
	List<Color>? color;
	List<Availability>? availability;

	ProductVariants({this.size, this.color, this.availability});

	factory ProductVariants.fromJson(Map<String, dynamic> json) {
		return ProductVariants(
			size: (json['Size'] as List<dynamic>?)
						?.map((e) => Size.fromJson(e as Map<String, dynamic>))
						.toList(),
			color: (json['Color'] as List<dynamic>?)
						?.map((e) => Color.fromJson(e as Map<String, dynamic>))
						.toList(),
			availability: (json['Availability'] as List<dynamic>?)
						?.map((e) => Availability.fromJson(e as Map<String, dynamic>))
						.toList(),
		);
	}



	Map<String, dynamic> toJson() => {
				'Size': size?.map((e) => e.toJson()).toList(),
				'Color': color?.map((e) => e.toJson()).toList(),
				'Availability': availability?.map((e) => e.toJson()).toList(),
			};
}
