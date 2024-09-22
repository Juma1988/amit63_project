import 'package:app/core/design/navigator.dart';
import 'package:app/core/design/theme.dart';
import 'package:app/core/logic/service_locator.dart';
import 'package:app/pages/03_login/view.dart';
import 'package:app/pages/04_forget_password/04_password_successfully/view.dart';
import 'package:app/pages/05_home_screen/pages/01_home/view.dart';
import 'package:app/pages/05_home_screen/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'pages/99_test/view.dart';

late int initScreen;

Future<void> main() async {
  initServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Project Amit 63",
        navigatorKey: navigatorKey,
        home: ShoppingApp(),
        theme: lightMode,
        darkTheme: darkMode,
      ),
    );
  }
}
