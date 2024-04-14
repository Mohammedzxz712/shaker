import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart_doctor/layout/cubit/states.dart';

import '../../modules/home/home_screen.dart';
import '../../modules/profile/profile_screen.dart';
import '../../modules/tips/tips_screen.dart';

class ShopCubit extends Cubit<ShopStates> {
  ShopCubit() : super(ShopInitialState());

  static ShopCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    TipsScreen(),
    ProfileScreen(),
  ];

  void changeBottomScreen(int index) {
    currentIndex = index;
    emit(ShopChangeButtonNavState());
  }
}
