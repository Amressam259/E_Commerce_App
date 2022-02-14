import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/layout/shop_layout.dart';
import 'package:untitled/shared/components/components.dart';
import 'package:untitled/shared/styles/icon_broken.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';


class ShopRegisterScreen extends StatelessWidget {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopRegisterCubit(),
      child: BlocConsumer<ShopRegisterCubit, ShopRegisterStates>(
        listener: (context, state)
        {
          if(state is ShopUserRegisterSuccessState)
            navigateTo(context, ShopLayout());
        },
        builder: (context, state) {
          var Cubit = ShopRegisterCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.orangeAccent,
            appBar: AppBar(
              backgroundColor: Colors.orangeAccent,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding:
                const EdgeInsets.only(top: 50.0, left: 25.0, right: 25.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'أنشئ حسابك',
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text('اهلا بيك نورتنا', style: TextStyle(
                              fontSize: 20.0
                          ),)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0
                        ),
                        child: TextFormField(
                          validator: (value)
                          {
                            if(value.isEmpty)
                              return 'يجب كتابة الاسم';
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            prefixIcon: Icon(IconBroken.Profile,color: Colors.orangeAccent,),
                            hintText: 'الاسم',
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0
                        ),
                        child: TextFormField(
                          validator: (value)
                          {
                            if(value.isEmpty)
                              return 'يجب تسجيل الدخول';
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            prefixIcon: Icon(IconBroken.Message,color: Colors.orangeAccent,),
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
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0
                        ),
                        child: TextFormField(
                          validator: (value)
                          {
                            if(value.isEmpty)
                              return 'يجب كتابة كلمة المرور';
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            prefixIcon: Icon(IconBroken.Password,color: Colors.orangeAccent,),
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
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0
                        ),
                        child: TextFormField(
                          validator: (value)
                          {
                            if(value.isEmpty)
                              return 'يجب ادخال رقم الهاتف';
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            prefixIcon: Icon(IconBroken.Call,color: Colors.orangeAccent,),
                            hintText: 'رقم الهاتف',
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
                        height: 20.0,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: defaultButton(
                            radius: 20.0,
                            width: 150.0,
                            text: 'تسجيل',
                            function: () {
                              formKey.currentState.validate();
                              Cubit.userRegister(
                                  email: emailController.text,
                                  password: passwordController.text);
                            }),
                      ),
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
