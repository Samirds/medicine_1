import 'package:flutter/material.dart';
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
      home: MainPageBody(),
      //home: HomePage(),
      //home: HomePageView(),
    );
  }
}
