import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fg extends StatefulWidget {
  const fg({Key? key}) : super(key: key);

  @override
  State<fg> createState() => _fgState();
}

class _fgState extends State<fg> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Text("Medicine Info"),
          SizedBox(
            height: 15,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            child: Container(
              //color: Colors.red,
              // height: 50,
              // width: 50,
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
                  labelPadding: EdgeInsets.symmetric(horizontal: 30),
                  tabs: const [
                    Tab(
                        child: Text(
                      "Missed",
                      style: TextStyle(color: Colors.black),
                    )),
                    Tab(
                        child: Text("Person",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Dialed",
                            style: TextStyle(color: Colors.black)))
                  ]),
            ),
          ),
          Expanded(
              child: TabBarView(
            controller: tabController,
            children: [
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: ListTile(
                        leading: Icon(
                          Icons.dialer_sip,
                          color: Colors.orange,
                        ),
                        title: Text("Person ${index + 1}"),
                        trailing: Icon(
                          Icons.cabin,
                          color: Colors.orange,
                        ),
                      ),
                    );
                  }),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: ListTile(
                        leading: Icon(
                          Icons.dialer_sip,
                          color: Colors.orange,
                        ),
                        title: Text("Person ${index + 1}"),
                        trailing: Icon(
                          Icons.cabin,
                          color: Colors.orange,
                        ),
                      ),
                    );
                  }),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: ListTile(
                        leading: Icon(
                          Icons.dialer_sip,
                          color: Colors.orange,
                        ),
                        title: Text("Person ${index + 1}"),
                        trailing: Icon(
                          Icons.cabin,
                          color: Colors.orange,
                        ),
                      ),
                    );
                  })
            ],
          ))
        ],
      ),
    );
  }
}
