import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyo/controllers/username_controller.dart';
import 'package:studyo/utils/color_settings.dart';
import 'package:studyo/views/widgets/validation_text_widget.dart';

class CardContentColumnWidget extends StatelessWidget {
  CardContentColumnWidget({super.key});

  final UsernameController usernameController = Get.put(UsernameController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 18,
        ),
        _buildUsernameTextWidget(),
        const SizedBox(
          height: 30,
        ),
        _buildTextFieldWidget(),
        const SizedBox(height: 10),
        Obx(
          () => ValidationTextWidget(
            isInvalidCharacters: usernameController.isInvalidCharacters.value,
            isShortLength: usernameController.isShortLength.value,
            isUnavailable: usernameController.isUnavailable.value,
            isCant: usernameController.isCant.value,
          ),
        ),
      ],
    );
  }

  TextField _buildTextFieldWidget() {
    return TextField(
      controller: TextEditingController()
        ..text = usernameController.username.value,
      onChanged: (value) {
        usernameController.validateUsername(value);
      },
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        label: Container(
          padding: const EdgeInsets.only(
            top: 4.0,
            bottom: 4.0,
            left: 12.0,
            right: 12.0,
          ),
          decoration: BoxDecoration(
            color: ColorSettings.cyan,
          ),
          child: const Text(
            "Username",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        filled: true,
        fillColor: ColorSettings.cyan,
        hintText: "Set Username",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2.5,
          ),
        ),
      ),
    );
  }

  Center _buildUsernameTextWidget() {
    return const Center(
      child: Text(
        "Username",
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
