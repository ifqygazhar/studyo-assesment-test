import 'package:get/get.dart';

class ValidationController extends GetxController {
  RxBool isValid = false.obs;

  void updateValidation(bool value) {
    isValid.value = value;
  }
}
