// list tiles

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine_1/utils/app_colors.dart';
import 'package:medicine_1/widgets/reuseable_appbar.dart';

import '../search_functionalitires.dart';

class MedicibeList extends StatefulWidget {
  const MedicibeList({Key? key}) : super(key: key);

  @override
  State<MedicibeList> createState() => _MedicibeListState();
}

class _MedicibeListState extends State<MedicibeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HELLO"),
          //centerTitle: true,
          leading: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            child: Icon(Icons.circle),
          ),

          actions: [
            IconButton(
                onPressed: () {
                  final result = showSearch(
                      context: context, delegate: SeachFuctionalities());
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
        ),

        // --------------------------------------------------------- bodyy--------------------------------------------------
        body: Container(
          margin: EdgeInsets.only(left: 5, right: 5, top: 10),
          //height: 200,
          color: AppColors.bodyColor,
          child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                    height: 20,
                    thickness: 3,
                  ),
              scrollDirection: Axis.vertical,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Column(children: [
                  Container(
                    //margin: EdgeInsets.only(bottom: 15),
                    height: 100,
                    //width: 100,
                    //color: Colors.blue,
                    color: AppColors.bodyColor,
                    child: Row(
                      children: [
                        // Image Section
                        Container(
                          height: 100,
                          width: 80,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12)),
                              //color: Colors.green,

                              //color: Colors.red
                              color: AppColors.containerColor),
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/syring2.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          //color: Colors.green,
                          //child: ,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                color: AppColors.containerColor,
                                //color: Colors.blue,
                                //height: 55,
                                child: Column(
                                  children: [
                                    Row(
                                      children: const [
                                        Expanded(
                                            child: Text(
                                          "Savlon's Mask ssssssss dddddddddd eeeeeeeee ssssssssss dddd rrrrr fffffffff eeeeeeeeeee sssssssssssssssssssssssssssssssssssssssss",
                                          style: TextStyle(
                                              fontSize: 15,
                                              //fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 51, 51, 51)),
                                          softWrap: false,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ))
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 45,
                                      height: 7,
                                    ),
                                    Row(
                                      children: const [
                                        Text('data :',
                                            style: TextStyle(fontSize: 12)),
                                        Text('254554',
                                            style: TextStyle(fontSize: 12)),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 45,
                                      height: 5,
                                    ),
                                    const Text(
                                      "\$ : 555",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Container(
                                  width: 75,
                                  height: 49,
                                  //color: Colors.green,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color:
                                          Color.fromARGB(255, 210, 245, 182)),
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text("Add"),
                                  ),
                                  //height: 55,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]);
              }),
        ));
  }
}
