import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer extends StatefulWidget {
  const Drawer({Key? key}) : super(key: key);

  @override
  State<Drawer> createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(),
      body: Builder(builder: (context) {
        return Center(
          child: RaisedButton(
            child: Text("data"),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        );
      }),
    );
  }
}
