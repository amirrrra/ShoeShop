class BrandModel {
  final String name;
  final String logo;
  final void Function()? onTap;

  BrandModel({required this.name, required this.logo, this.onTap});
}

class BrandsData {
  List<BrandModel> brandsBaseList = [
    BrandModel(name: nike, logo: nikeLogo),
    BrandModel(name: fila, logo: filaLogo),
    BrandModel(name: salomon, logo: salomonLogo),
    BrandModel(name: adidas, logo: adidasLogo),
    BrandModel(name: skechers, logo: skechersLogo),
    BrandModel(name: jordan, logo: jordanLogo),
    BrandModel(name: puma, logo: pumaLogo),
  ];
  List<BrandModel> brandSubList = [
    BrandModel(name: asics, logo: asicsLogo),
    BrandModel(name: lacoste, logo: lacosteLogo),
    BrandModel(name: vans, logo: vansLogo),
    BrandModel(name: newbalance, logo: newbalanceLogo),
    BrandModel(name: saucony, logo: sauconyLogo),
    BrandModel(name: champion, logo: championLogo),
    BrandModel(name: converse, logo: converseLogo),
    BrandModel(name: reebok, logo: reebokLogo),
  ];

  static const path = 'assets/brands/';
  static const adidasLogo = '$path${'adidas.svg'}';
  static const asicsLogo = '$path${'asics.svg'}';
  static const converseLogo = '$path${'converse.svg'}';
  static const newbalanceLogo = '$path${'newbalance.svg'}';
  static const nikeLogo = '$path${'nike.svg'}';
  static const lacosteLogo = '$path${'lacoste.svg'}';
  static const pumaLogo = '$path${'puma.svg'}';
  static const reebokLogo = '$path${'reebok.svg'}';
  static const vansLogo = '$path${'vans.svg'}';
  static const salomonLogo = '$path${'salomon.svg'}';
  static const sauconyLogo = '$path${'saucony.svg'}';
  static const jordanLogo = '$path${'jordan.svg'}';
  static const championLogo = '$path${'champion.svg'}';
  static const skechersLogo = '$path${'skechers.svg'}';
  static const filaLogo = '$path${'fila.svg'}';
  static const moreLogo = '$path${'more.svg'}';
  static const lessLogo = '$path${'less.svg'}';

  static const adidas = 'Adidas';
  static const asics = 'Asics';
  static const converse = 'Converse';
  static const newbalance = 'New Balance';
  static const nike = 'Nike';
  static const lacoste = 'Lacoste';
  static const puma = 'Puma';
  static const reebok = 'Reebok';
  static const vans = 'Vans';
  static const salomon = 'Salomon';
  static const saucony = 'Saucony';
  static const jordan = 'Jordan';
  static const champion = 'Champion';
  static const skechers = 'Skechers';
  static const fila = 'Fila';
  static const more = 'More ..';
  static const less = '.. Less';
}
