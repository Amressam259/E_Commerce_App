abstract class ShopLoginStates{}

 class ShopLoginInitialState extends ShopLoginStates{}

 class ShopLoginSuccessState extends ShopLoginStates
 {
  final String uid;

  ShopLoginSuccessState(this.uid);
 }

 class ShopLoginErrorState extends ShopLoginStates
 {
  final String error;

  ShopLoginErrorState(this.error);
 }