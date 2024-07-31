import 'package:bank_deisgn_flutterwebsite/view/financial_view/financial_freedom_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/grow_your_busniess/grow_your_busniess_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/login/login_screen_view.dart';
import 'package:bank_deisgn_flutterwebsite/view/login/register_screen_view.dart';
import 'package:bank_deisgn_flutterwebsite/view/main_screen.dart';
import 'package:bank_deisgn_flutterwebsite/view/unlock_view/unlock_your_business_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return GetMaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            getPages: [
              GetPage(name: '/LoginScreenView', page: () => LoginScreenView()),
              GetPage(
                  name: '/RegisterScreenView',
                  page: () => RegisterScreenView()),
              GetPage(name: '/MainScreen', page: () => MainScreen())
            ],
          home: LoginScreenView(),

        );

        ////
      },
    );
  }
}
