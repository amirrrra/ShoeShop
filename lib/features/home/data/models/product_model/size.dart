class Size {
	String? value;

	Size({this.value});

	factory Size.fromJson(Map<String, dynamic> json) => Size(
				value: json['value'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'value': value,
			};
}
