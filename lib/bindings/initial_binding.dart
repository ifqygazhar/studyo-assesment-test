import 'package:get/get.dart';
import 'package:studyo/controllers/username_controller.dart';
import 'package:studyo/controllers/validation_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsernameController>(() => UsernameController());
    Get.lazyPut<ValidationController>(() => ValidationController());
  }
}
