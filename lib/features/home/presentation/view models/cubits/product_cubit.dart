import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/features/home/data/repos/home_repo.dart';
import 'package:store/features/home/presentation/view%20models/cubits/product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeRepo) : super(ProductInitialState());

  final HomeRepo homeRepo;
  Future<void> getProducts(String category) async {
    print("Fetching products for category: $category");

    emit(ProductLoadingState());

    var data = await homeRepo.fetchProducts(category: category);

    data.fold(
      (errmessage) {
        print("Error fetching products: $errmessage");
        emit(ProductFailureState(errMessage: errmessage.toString()));
      },
      (productList) {
        print("Products fetched: ${data.length}");

        emit(ProductSuccessState(productList: productList));
      },
    );
  }
}
