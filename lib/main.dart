
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_work3/screens/first_screen.dart';
class MyApp
 extends StatelessWidget {
  const MyApp
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen(
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}