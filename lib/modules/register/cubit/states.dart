abstract class ShopRegisterStates{}

class ShopRegisterInitialState extends ShopRegisterStates{}

class ShopRegisterSuccessState extends ShopRegisterStates{}

class ShopRegisterErrorState extends ShopRegisterStates
{
  final String error;

  ShopRegisterErrorState(this.error);
}

class ShopUserRegisterSuccessState extends ShopRegisterStates{}

class ShopUserRegisterErrorState extends ShopRegisterStates
{
  final String error;

  ShopUserRegisterErrorState(this.error);
}