import 'package:appday_cash_king/utils/colors.dart';
import 'package:flutter/material.dart';

import 'app/modules/home/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cash King',
      theme: ThemeData(primarySwatch: Colors.green, scaffoldBackgroundColor: AppColors.bluelite),
      home: HomeView(),
    );
  }
}
