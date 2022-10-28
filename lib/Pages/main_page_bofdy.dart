import 'package:flutter/material.dart';
import 'package:medicine_1/Pages/profile_page.dart';
import 'feed_page.dart';
import 'home_page.dart';
import 'settings_page_view.dart';

class MainPageBody extends StatefulWidget {
  const MainPageBody({Key? key}) : super(key: key);

  @override
  _MainPageBodyState createState() => _MainPageBodyState();
}

class _MainPageBodyState extends State<MainPageBody> {
  // we are using this because of custome searchbar in appbar
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
              Tab(icon: Icon(Icons.book_online_rounded), text: "Feed"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
            ]),
          ),
          body: const TabBarView(children: [
            HomePage(),
            FeedPage(),
            ProfilePage(),
            SettingsPage(),
          ]),
        ),
      ),
    );
  }
}
