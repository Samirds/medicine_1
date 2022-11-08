import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Pages/Medicine_pages/search_functionalitires.dart';

class ReuseableAppbar extends StatefulWidget {
  const ReuseableAppbar({Key? key}) : super(key: key);

  @override
  State<ReuseableAppbar> createState() => _ReuseableAppbarState();
}

class _ReuseableAppbarState extends State<ReuseableAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("HELLO"),
      //centerTitle: true,
      leading: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
        child: Icon(Icons.circle),
      ),

      actions: [
        IconButton(
            onPressed: () {
              final result =
                  showSearch(context: context, delegate: SeachFuctionalities());
              print(result);
            },
            icon: const Icon(Icons.search)),
        Container(
          //color: Colors.green,
          child: Stack(
            children: [
              Container(
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shop))),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 20,
                  width: 20,
                  //color: Colors.red,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: const Text("0"),
                  ),
                ),
              )
            ],
          ),
        )
      ],
      //backgroundColor: Colors.purple,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lime, Colors.lightGreen],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
      ),
    );
  }
}
