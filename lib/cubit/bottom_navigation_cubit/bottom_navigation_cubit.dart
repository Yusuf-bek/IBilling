import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibilling/cubit/bottom_navigation_cubit/bottom_navigation_states.dart';

class BottomNavCubit extends Cubit<BottomNavigationState> {
  BottomNavCubit(BottomNavigationState initialState) : super(initialState);

  int indexNav = 0;

  void changeIndex(int index) {
    indexNav = index;
    emit(BottomNavChangedState());
  }
}
