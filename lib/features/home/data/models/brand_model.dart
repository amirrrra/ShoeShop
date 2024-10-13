import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/routes.dart';

class BrandModel {
  final String name;
  final String logo;
  final void Function()? onTap;

  BrandModel({required this.name, required this.logo, this.onTap});
}

class BrandsData {
  List<BrandModel> brandsBaseList(BuildContext context) {
    onTap() => GoRouter.of(context).push(Routes.kBrand);
    return [
      BrandModel(name: nike, logo: nikeLogo, onTap: () => onTap()),
      BrandModel(name: fila, logo: filaLogo, onTap: () => onTap()),
      BrandModel(name: salomon, logo: salomonLogo, onTap: () => onTap()),
      BrandModel(name: adidas, logo: adidasLogo, onTap: () => onTap()),
      BrandModel(name: skechers, logo: skechersLogo, onTap: () => onTap()),
      BrandModel(name: jordan, logo: jordanLogo, onTap: () => onTap()),
      BrandModel(name: puma, logo: pumaLogo, onTap: () => onTap()),
    ];
  }

  List<BrandModel> brandSubList(BuildContext context) {
    onTap() => GoRouter.of(context).push(Routes.kBrand);
    return [
      BrandModel(name: asics, logo: asicsLogo, onTap: () => onTap()),
      BrandModel(name: lacoste, logo: lacosteLogo, onTap: () => onTap()),
      BrandModel(name: vans, logo: vansLogo, onTap: () => onTap()),
      BrandModel(name: newbalance, logo: newbalanceLogo, onTap: () => onTap()),
      BrandModel(name: saucony, logo: sauconyLogo, onTap: () => onTap()),
      BrandModel(name: converse, logo: converseLogo, onTap: () => onTap()),
      BrandModel(name: reebok, logo: reebokLogo, onTap: () => onTap()),
    ];
  }

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
  static const skechers = 'Skechers';
  static const fila = 'Fila';
  static const more = 'More ..';
  static const less = '.. Less';
}
