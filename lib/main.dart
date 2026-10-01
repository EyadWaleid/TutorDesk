import 'package:flutter/material.dart';
import 'Core/Style/ThemeApp.dart';
import 'Core/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
      MaterialApp.router(
        routerConfig: Routing.router,
      ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.6, 852.53),
      builder: (context, child) {
        return  MaterialApp(
          title: 'Flutter Demo',
          darkTheme: ThemeApp.darkTheme ,
          theme: ThemeApp.lightTheme,
          themeMode: ThemeMode.system,

        );
      },
    );
  }
}

