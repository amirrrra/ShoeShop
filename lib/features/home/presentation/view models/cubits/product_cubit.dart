import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/features/home/data/repos/home_repo.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeRepo) : super(ProductInitialState());

  final HomeRepo homeRepo;
  Future<void> getProducts({
    required String category,
    required num limit,
    required String filter,
  }) async {

    emit(ProductLoadingState());

    var data = await homeRepo.fetchProducts(category, limit, filter);

    data.fold(
      (errmessage) {
        emit(ProductFailureState(errMessage: errmessage.toString()));
      },
      (productList) {

        emit(ProductSuccessState(productList: productList));
      },
    );
  }
}
