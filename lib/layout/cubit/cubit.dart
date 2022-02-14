import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/layout/cubit/states.dart';
import 'package:untitled/modules/Setions_screen/sections_screen.dart';
import 'package:untitled/modules/fav_screen.dart';
import 'package:untitled/modules/home_screen/home_screen.dart';
import 'package:untitled/modules/register/my_acc_screen.dart';



class LayoutCubit extends Cubit<LayoutStates>{
  LayoutCubit() : super(ShopInitialLayoutState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens =
  [
    HomeScreen(),
    SectionsScreen(),
    FavScreen(),
    MyAccScreen()
  ];

  getBottomNav(index)
  {
    currentIndex = index;
    emit(ShopChangeBottomNav());
  }
  }
