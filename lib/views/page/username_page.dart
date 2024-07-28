import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyo/controllers/username_controller.dart';
import 'package:studyo/utils/color_settings.dart';
import 'package:studyo/views/widgets/card_border_container_widget.dart';
import 'package:studyo/views/widgets/card_content_column_widget.dart';
import 'package:studyo/views/widgets/custom_row_widget.dart';
import 'package:studyo/views/widgets/gradient_container_widget.dart';

class UsernamePage extends StatelessWidget {
  const UsernamePage({super.key});

  @override
  Widget build(BuildContext context) {
    final UsernameController usernameController = Get.put(UsernameController());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GradientContainerWidget(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 24,
              right: 24,
            ),
            child: Column(
              children: [
                const CustomRowWidget(),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      CardBorderContainerWidget(
                        child: CardContentColumnWidget(),
                      ),
                      Positioned(
                        bottom: -20,
                        child: SizedBox(
                          width: 320,
                          height: 58,
                          child: OutlinedButton(
                            onPressed: () async {
                              const String currentUserId =
                                  '3vSczdYxgSGsMsQiRkIs';
                              await usernameController
                                  .updateUsername(currentUserId);
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: ColorSettings.cyan2,
                              foregroundColor: Colors.black,
                              side: const BorderSide(
                                color: Colors.black,
                                width: 2.5,
                              ),
                            ),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
