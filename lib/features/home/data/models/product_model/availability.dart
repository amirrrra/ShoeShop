class Availability {
	String? value;

	Availability({this.value});

	factory Availability.fromJson(Map<String, dynamic> json) => Availability(
				value: json['value'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'value': value,
			};
}
