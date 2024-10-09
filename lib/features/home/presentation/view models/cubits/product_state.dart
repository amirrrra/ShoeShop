import 'package:store/features/home/data/models/product_model/product_model.dart';

class ProductState {}

class ProductInitialState extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductSuccessState extends ProductState {
  final List<ProductModel> productList;

  ProductSuccessState({required this.productList});
}

class ProductFailureState extends ProductState {
  final String errMessage;

  ProductFailureState({required this.errMessage});
}
