import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leap/features/home/home_screen/controller/states.dart';
import 'package:leap/features/home/home_screen/home_screen.dart';
import 'package:leap/features/jobs/job_screen.dart';


class HomeScreenCubit extends Cubit<HomeStates> {
  HomeScreenCubit() : super(IntialState());

  static HomeScreenCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = const [
    HomeScreen(),
    HomeScreen(),
    JobsScreen(),
    HomeScreen(),
    HomeScreen(),


  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(ChangeBottomNAvBarState());
  }

}
