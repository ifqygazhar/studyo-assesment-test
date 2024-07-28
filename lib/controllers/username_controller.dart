import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyo/services/firebase_services.dart';
import 'package:studyo/controllers/validation_controller.dart';
import 'package:studyo/utils/color_settings.dart';

class UsernameController extends GetxController {
  RxString username = ''.obs;
  RxBool isInvalidCharacters = false.obs;
  RxBool isShortLength = false.obs;
  RxBool isUnavailable = false.obs;
  RxBool isCant = false.obs;

  final FirebaseService _firebaseService = FirebaseService();
  final ValidationController validationController =
      Get.find<ValidationController>();

  void validateUsername(String value) {
    username.value = value;
    isInvalidCharacters.value = !RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value);
    isShortLength.value = value.length < 8;
    checkUsernameAvailability(value);
  }

  Future<void> checkUsernameAvailability(String value) async {
    final usernameAvailable = await _firebaseService.isUsernameAvailable(value);
    isUnavailable.value = !usernameAvailable;

    if (!usernameAvailable) {
      const String currentUserId = 'RqP1Ogejlfp3V0IpQOVY';
      final canChange = await _firebaseService.canChangeUsername(currentUserId);
      isCant.value = !canChange;
    } else {
      isCant.value = false;
    }

    validationController.updateValidation(
      !isInvalidCharacters.value &&
          !isShortLength.value &&
          !isUnavailable.value &&
          !isCant.value,
    );
  }

  Future<void> updateUsername(String userId) async {
    if (validationController.isValid.value) {
      await _firebaseService.updateUsername(userId, username.value);

      Get.snackbar(
        "Success",
        "Username updated successfully!",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } else {
      Get.snackbar(
        "Warning",
        "Validation is still wrong!",
        snackPosition: SnackPosition.TOP,
        backgroundColor: ColorSettings.orange,
        colorText: Colors.white,
      );
    }
  }
}
