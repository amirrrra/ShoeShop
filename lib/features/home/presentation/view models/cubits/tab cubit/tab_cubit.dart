import 'package:flutter_bloc/flutter_bloc.dart';

class TabCubit extends Cubit<int> {
  TabCubit() : super(0); // Default index is 0.

  void setCategoryIndex(int index) => emit(index);
}
