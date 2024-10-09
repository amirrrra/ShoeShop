import 'package:dartz/dartz.dart';
import 'package:store/core/errors/failure.dart';
import 'package:store/features/home/data/models/product_model/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<ProductModel>>> fetchProducts({
    required String category,
  });
}
