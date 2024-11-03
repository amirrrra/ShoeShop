import 'package:flutter_bloc/flutter_bloc.dart';

class FiltersCubit extends Cubit<int> {
  FiltersCubit() : super(0);

  void getFilterSelection(int index) {
    emit(index);
  }
}
