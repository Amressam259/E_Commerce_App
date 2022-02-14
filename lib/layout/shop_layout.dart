import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/shared/styles/icon_broken.dart';


import 'cubit/cubit.dart';
import 'cubit/states.dart';


class ShopLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutStates>(
      listener: (context, state){},
      builder: (context, state)
      {
        var Cubit = LayoutCubit.get(context);
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.deepOrangeAccent,
            onTap: (index)
            {
              Cubit.getBottomNav(index);
            },
            currentIndex: Cubit.currentIndex,
            items:
            [
              BottomNavigationBarItem(icon: Icon(IconBroken.Home,),
                  label: 'الرئيسية'),
              BottomNavigationBarItem(icon: Icon(IconBroken.Category,),
                  label: 'الاقسام'),
              BottomNavigationBarItem(icon: Icon(IconBroken.Heart,),
                  label: 'المفضلة'),
              BottomNavigationBarItem(icon: Icon(IconBroken.Profile,),
                  label: 'حسابي'),
            ],
          ),
          body: Cubit.screens[Cubit.currentIndex],
        );
      },
    );
  }
}