import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home/home_page_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 248, 225),
        body: Column(children: [
          Center(child: Text("data")),
          Center(child: Text("dadsfta")),
          HomePageView(),
          Center(child: Text("dadsfta")),
        ]));
  }
}
