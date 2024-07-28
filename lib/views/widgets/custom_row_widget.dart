import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:studyo/utils/color_settings.dart';
import 'package:studyo/controllers/validation_controller.dart';

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_buildBackButtonWidget(), _buildAlertWidget()],
    );
  }

  Container _buildBackButtonWidget() {
    return Container(
      height: 54,
      width: 54,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3.0),
        shape: BoxShape.circle,
        color: ColorSettings.purple,
      ),
      child: Center(
        child: GestureDetector(
          onTap: () {},
          child: Text(
            String.fromCharCode(Icons.arrow_back.codePoint),
            style: TextStyle(
              inherit: false,
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w900,
              fontFamily: Icons.arrow_back.fontFamily,
            ),
          ),
        ),
      ),
    );
  }

  Obx _buildAlertWidget() {
    final ValidationController validationController =
        Get.put<ValidationController>(ValidationController());

    return Obx(
      () {
        return Container(
          height: 54,
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3.0),
            color: validationController.isValid.value
                ? Colors.green
                : ColorSettings.orange,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                validationController.isValid.value
                    ? "Complete"
                    : "Incomplete Profile",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              validationController.isValid.value
                  ? const Icon(Icons.check, color: Colors.black, size: 28)
                  : SvgPicture.asset(
                      'assets/svg/info.svg',
                      width: 28,
                      height: 28,
                    ),
            ],
          ),
        );
      },
    );
  }
}
