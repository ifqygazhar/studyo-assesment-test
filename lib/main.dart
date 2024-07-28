import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studyo/bindings/initial_binding.dart';
import 'package:studyo/firebase_options.dart';
import 'package:studyo/routes/app_routes.dart';
import 'package:studyo/views/page/username_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinding(),
      initialRoute: AppRoutes.USERNAME,
      title: 'Studyo',
      getPages: [
        GetPage(
          name: AppRoutes.USERNAME,
          page: () => const UsernamePage(),
        )
      ],
    );
  }
}
