import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine_1/widgets/Tab%20Bar%20Class/tab_bar_pages/description.dart';

class MedicineInfoTabBar extends StatefulWidget {
  const MedicineInfoTabBar({Key? key}) : super(key: key);

  @override
  State<MedicineInfoTabBar> createState() => _MedicineInfoTabBar();
}

class _MedicineInfoTabBar extends State<MedicineInfoTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        Container(
          height: 30,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                //color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15)),
                  controller: tabController,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(
                      horizontal: 45), ///////////////////////////////////
                  tabs: const [
                    Tab(
                        child: Text(
                      " Description",
                      style: TextStyle(color: Colors.black),
                    )),
                    Tab(
                        child: Text("Usage",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child:
                            Text("Info", style: TextStyle(color: Colors.black)))
                  ]),
            ),
          ),
        ),
        Expanded(
            child: Container(
          color: Colors.red,
          child: TabBarView(
            controller: tabController,
            children: [
              MediaQuery.removePadding(
                  context: context, removeTop: true, child: Description()),
              MediaQuery.removePadding(
                  context: context, removeTop: true, child: Description()),
              MediaQuery.removePadding(
                  context: context, removeTop: true, child: Description()),
            ],
          ),
        ))
      ],
    );
  }
}
