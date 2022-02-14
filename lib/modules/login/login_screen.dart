import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/layout/shop_layout.dart';
import 'package:untitled/modules/register/register_screen.dart';
import 'package:untitled/shared/components/components.dart';
import 'package:untitled/shared/network/local/cache_helper.dart';
import 'package:untitled/shared/styles/icon_broken.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';


class LoginScreen extends StatelessWidget {
  var loginController = TextEditingController();
  var passwordController = TextEditingController();

  var fomrKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit, ShopLoginStates>(
        listener: (context, state) {
          if (state is ShopLoginErrorState) {
            showToast(
              text: state.error,
              state: ToastStates.ERROR,
            );
          }
          if (state is ShopLoginSuccessState)
            CacheHelper.saveData(key: 'uid', value: state.uid);
          navigateTo(context, ShopLayout());
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.orangeAccent,
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Form(
                  key: fomrKey,
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Colors.white60,
                              child: Image(
                                  image: NetworkImage(
                                'https://cdn.discordapp.com/attachments/734028401505075300/924107355489181726/unknown.png',
                              ))),
                          // Positioned(
                          //   bottom: -8,
                          //     child: Text('يلا اشتري',style:  TextStyle(fontSize: 20.0),))
                        ],
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      Text(
                        'تسوق الان',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'اهلا بيك في متجركو',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      //
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) return 'يجب تسجيل الدخول';
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            prefixIcon: Icon(
                              IconBroken.Message,
                              color: Colors.orangeAccent,
                            ),
                            hintText: 'البريد الالكتروني',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value.isEmpty) return 'يجب كتابة كلمة المرور';
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            prefixIcon: Icon(
                              IconBroken.Password,
                              color: Colors.orangeAccent,
                            ),
                            hintText: 'كلمة المرور',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                'هل نسيت كلمة المرور؟',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          InkWell(
                            onTap: () {
                              navigateTo(context, ShopRegisterScreen());
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: Container(
                                alignment: Alignment.center,
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Colors.white70),
                                child: Text(
                                  'أنشئ حسابك',
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.black),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      defaultButton(
                          width: 150,
                          radius: 20.0,
                          text: 'تسجيل',
                          function: () {
                            fomrKey.currentState.validate();
                            ShopLoginCubit.get(context).userLogin(
                                email: loginController.text,
                                password: passwordController.text);
                          },
                          background: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
