import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({Key? key}) : super(key: key);

  @override
  State<MedicinePage> createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  Icon customIcon = Icon(Icons.search);
  Widget customeSearchBar = Container(
    child: Column(
      children: const [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Hello",
            textScaleFactor: 0.75,
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Samir Dasdddddddddddddddddddddddddddd",
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        // we are wrapping the whole thing with safe area  for afety from notches
        length: 4, // lenght of tabs
        child: Scaffold(
          // we are wrappping scaffl with DefaultTabController for getting the tab inside the appbar
          appBar: AppBar(
            leading: Icon(Icons.circle),
            title: customeSearchBar,
            actions: [
              IconButton(
                icon: customIcon,
                onPressed: () {
                  setState(() {
                    if (this.customIcon.icon == Icons.search) {
                      this.customIcon = Icon(Icons.cancel);
                      customeSearchBar = const TextField(
                        textInputAction: TextInputAction.go,
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 103, 122, 79))),
                            hintText: "Search Item",
                            hintStyle: TextStyle(color: Colors.grey)),
                        style: TextStyle(color: Colors.white),
                      );
                    } else {
                      customIcon = Icon(Icons.search);
                      customeSearchBar = Container(
                        child: Column(
                          children: const [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Hello",
                                textScaleFactor: 0.75,
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Samir Dasfffffffffffffffffffffffff",
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      );
                    }
                  });
                },
              ),
              IconButton(
                icon: const Icon(Icons.circle_notifications_rounded),
                onPressed: () {
                  print("object");
                },
              ),
              const SizedBox(
                width: 10,
              ),
            ],
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.lime, Colors.lightGreen],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter),
              ),
            ),
            bottom: const TabBar(indicatorColor: Colors.limeAccent, tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
                text: "Home",
              ),
              Tab(icon: Icon(Icons.online_prediction_rounded), text: "Order"),
              Tab(icon: Icon(Icons.favorite), text: "Cart"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
            ]),
          ),
          body: TabBarView(children: [
            //SingleChildScrollView(child: HomePage()),
            //HomePage(),
            //FeedPage(),
            //ProfilePage(),
            //SettingsPage(),
          ]),
        ),
      ),
    );
  }
}
