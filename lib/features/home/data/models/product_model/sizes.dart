class Sizes {
  final String? value;

  Sizes({required this.value});

  factory Sizes.fromJson(json) {
    return Sizes(value: json['value']);
  }

  Map<String, dynamic> toJson() => {
        'value': value,
      };
}
