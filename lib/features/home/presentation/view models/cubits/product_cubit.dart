import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/features/home/data/repos/home_repo.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_state.dart';

class ProductCubit extends Cubit {
  ProductCubit(super.initialState, this.homeRepo);

  final HomeRepo homeRepo;
  Future<void> getProducts(String category) async {
    emit(ProductLoadingState());
    var data = await homeRepo.fetchProducts(category: category);

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
