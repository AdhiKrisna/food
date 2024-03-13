
import 'package:get/get.dart';

class AuthController extends GetxController {
  final RxBool _isObscure = true.obs;
  RxBool get isObscure => _isObscure;

  void changeIsObsecure(){
    _isObscure.value = !_isObscure.value;
  }
}