class BrandModel {
  final String name;
  final String logo;

  BrandModel({
    required this.name,
    required this.logo,
  });
}

class BrandsData {
  static List<BrandModel> get brandsList {
    return List.generate(
      logos.length,
      (index) => BrandModel(
        name: names[index],
        logo: logos[index],
      ),
    );
  }

  static const path = 'assets/brands/';

 static List<String> logos = [
    '$path${'nike.svg'}',
    '$path${'adidas.svg'}',
    '$path${'jordan.svg'}',
    '$path${'puma.svg'}',
    '$path${'reebok.svg'}',
    '$path${'converse.svg'}',
    '$path${'skechers.svg'}',
    '$path${'newbalance.svg'}',
  ];

 static List<String> names = [
    'Nike',
    'Adidas',
    'Jordan',
    'Puma',
    'Reebok',
    'Converse',
    'Skechers',
    'New Balance',
  ];
}
