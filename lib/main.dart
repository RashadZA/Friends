import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:friends/Services/Routes/app_pages.dart';
import 'package:friends/Utils/app_threme.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BS Test',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.friends,
      getPages: AppPages.routes,
      initialBinding: BindingsX.initialBindigs(),
      theme: AppTheme.lightTheme,
      unknownRoute: AppPages.unknownRoute,
    );
  }
}
