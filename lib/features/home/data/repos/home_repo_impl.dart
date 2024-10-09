import 'package:dartz/dartz.dart';
import 'package:store/core/errors/failure.dart';
import 'package:store/core/services/api_service.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';
import 'package:store/features/home/data/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts({
    required String category,
  }) async {
    try {
      var data = await ApiService().get(category);
      List<ProductModel> productsList = [];

      for (var item in data['data']['products']) {
        productsList.add(ProductModel.fromJson(item));
      }

      return right(productsList);
    } catch (e) {
      return left(
        Failure(
          errMessage: e.toString(),
        ),
      );
    }
  }
}
