import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/models/user_model.dart';
import 'package:untitled/modules/register/cubit/states.dart';

class ShopRegisterCubit extends Cubit<ShopRegisterStates> {
  ShopRegisterCubit() : super(ShopRegisterInitialState());

  static ShopRegisterCubit get(context) => BlocProvider.of(context);

  void userRegister({
    @required String email,
    @required String password,
    @required String name,
    @required String phone
  }) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      userCreate(
          name: name,
          email: email,
          phone: phone,
          uid: value.user.uid);
    })
        .catchError((error) {
      emit(ShopRegisterErrorState(error.toString()));
    });
  }

  void userCreate({
    @required String name,
    @required String email,
    @required String phone,
    @required String uid,
  }) {
    userShopModel Model = userShopModel(
      name: name,
      email: email,
      phone: phone,
      uid: uid,
    );
    FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set(Model.toMap()).then((value) {
      emit(ShopUserRegisterSuccessState());
    }).catchError((error) {
      emit(ShopUserRegisterErrorState(error.toString()));
    });
  }
}
