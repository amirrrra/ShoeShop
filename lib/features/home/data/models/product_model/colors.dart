class Colors {
  final String? thumbnail;

  Colors({required this.thumbnail});

  factory Colors.fromJson(json) {
    return Colors(thumbnail: json['thumbnail']);
  }

  Map<String, dynamic> toJson() => {
        'thumbnail': thumbnail,
      };
}
