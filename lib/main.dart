import 'package:flutter/material.dart';
import 'package:medicine_1/Pages/Medicine/medicine_page.dart';
import 'package:medicine_1/utils/grid_view.dart';
import 'Pages/home_page.dart';
import 'Pages/main_page_bofdy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: GtidViewPage(),
      home: MainPageBody(),
      //home: HomePageView(),
      //home: Drawer(),
      //home: MedicinePage(),
    );
  }
}
