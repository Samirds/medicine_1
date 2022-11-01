import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine_1/Pages/home/shop_by_category.dart';
import 'package:medicine_1/utils/caterories_list_view.dart';
import 'package:medicine_1/utils/colors.dart';

import '../utils/grid_view.dart';
import 'home/home_page_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ////////------------------------------------------------------ Scaffold Start ------------------------------------------------------------------------------------>
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 236, 208),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ////////------------------------------------ -------------Container Start ------------------------------------------------------------------------------------>
        Container(
          height: 30,
          width: 160,
          //color: Colors.red,
          padding: const EdgeInsets.all(5),
          margin: EdgeInsets.only(left: 8, top: 10),
          decoration: BoxDecoration(
              //color: Colors.lime[200],
              color: Color.fromARGB(255, 250, 248, 225),
              //borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.black,
                width: 0.5,
              )),
          child: const Text("Popular Products     > ",
              style: TextStyle(color: Color.fromARGB(255, 39, 43, 34))),
        ),
        ////////---------------------------------------------------------- Container End ------------------------------------------------------------------------------------>
        const SizedBox(height: 10),
        const HomePageView(),
        ////////---------------------------------------------------------- Explore categories Start ------------------------------------------------------------------------------------>
        Container(
          height: 130,
          // width: 350,
          color: Color.fromARGB(255, 250, 248, 225),
          margin: EdgeInsets.only(left: 8, top: 10, right: 8),
          ////////------------------------------------------------------------- Columns Start ------------------------------------------------------------------------------------>
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "Explore",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17.0),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text("Categories",
                      style:
                          TextStyle(color: Color.fromARGB(255, 39, 43, 34)))),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 35,
                  ),
                  // ------------------------------------------------------------Stack 1 (Explore categories) ---------------------------------------------------------------------------
                  Stack(children: [
                    Container(
                      height: 82,
                      width: 105,
                      color: Color.fromARGB(255, 250, 248, 225),
                      //color: Colors.black,
                      child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Consult Doctor",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 39, 43, 34)),
                          )),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          // padding: EdgeInsets.all(100),
                          //margin: EdgeInsets.all(1),
                          //color: Colors.white,
                          height: 68,
                          width: 105,
                          //color: Colors.white,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/pharma.jpg")))),
                    ),
                  ]),
                  //------------------------------------------------------------------------------------------------------------------------------

                  const SizedBox(
                    width: 5,
                  ),
                  //----------------------------------------------------- Stack 2 (Explore categories) --------------------------------------------------------------
                  Stack(children: [
                    Container(
                      height: 82,
                      width: 105,
                      color: Color.fromARGB(255, 250, 248, 225),
                      //color: Colors.black,
                      child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Medicine",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 39, 43, 34)),
                          )),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          // padding: EdgeInsets.all(100),
                          //margin: EdgeInsets.all(1),
                          //color: Colors.white,
                          height: 68,
                          width: 105,
                          //color: Colors.white,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/medicine.jpg")))),
                    ),
                  ]),
                  // ---------------------------------------------------------------------------------------------------------------------------------
                  const SizedBox(
                    width: 5,
                  ),
                  //-----------------------------------------------------------Stack 3 (Explore categories) -----------------------------------------------------------------------
                  Stack(children: [
                    Container(
                      height: 82,
                      width: 105,
                      color: Color.fromARGB(255, 250, 248, 225),
                      //color: Colors.black,
                      child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Lab Test",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 39, 43, 34)),
                          )),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          // padding: EdgeInsets.all(100),
                          //margin: EdgeInsets.all(1),
                          //color: Colors.white,
                          height: 68,
                          width: 105,
                          //color: Colors.white,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/lab.jpg")))),
                    ),
                  ]),
                  //--------------------------------------------------------------------------------------------------------
                ],
              )
            ],
          ),
        ),
        // --------------------------------------------------------- Explore categories End ----------------------------------------
        const SizedBox(
          height: 15,
        ),
        //------------------------------------------------------------ Shop By Category Text Start ------------------------------------------------

        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Shop By Category",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              InkWell(child: Text("View All  >"))
            ],
          ),
        ),

        //-----------------------------------------------------------------------------------------------------------------------------------------

        const SizedBox(
          height: 10,
        ),

        //------------------------------------------------------------ Shop By Category  Start ------------------------------------------------

        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          height: 55,
          //color: Colors.blue,
          //color: AppColors.containerColor,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, position) {
                return Container(
                  height: 55,
                  width: 160,
                  margin: const EdgeInsets.only(
                    left: 5,
                    right: 5,
                  ),
                  child: Row(
                    children: [
                      // image section
                      Container(
                        height: 55,
                        width: 55,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12)),
                          //color: Colors.green,
                          color: AppColors.containerColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 10, top: 5, bottom: 5),
                          child: Image.asset(
                            "assets/images/pills.jpg",
                          ),
                        ),
                        // image: DecorationImage(
                        //     fit: BoxFit.cover,
                        //     image: AssetImage(
                        //         "assets/images/pills.jpg"))
                      ),

                      // Padding(padding: EdgeInsets.all(15),
                      // child: Image.asset("assets/images/pills.jpg"),

                      // text section
                      Expanded(
                        child: Container(
                          width: 55,
                          height: 85,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12)),
                              //color: Colors.red,
                              color: AppColors.containerColor),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15, right: 10),
                            child: Center(
                                child: Text(
                              "Baby's Product",
                              style: TextStyle(color: AppColors.textColor),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
        // ------------------------------------------------------------------------------------------------------------------

        const SizedBox(
          height: 19,
        ),

        //-------------------------------------------------------  Shop by Brands --------------------------------------------------

        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Shop By Brands",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              InkWell(child: Text("View All  >"))
            ],
          ),
        ),

        const SizedBox(
          height: 15,
        ),
        Container(
          height: 290,
          color: Colors.red,
          //color: AppColors.bodyColor,
          child: Container(
            height: 239,
            //color: AppColors.bodyColor,
            color: AppColors.containerColor,
            child: GtidViewPage(),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        //------------------------------------------------- Call by Medicine --------------------------------------------
        Container(
          height: 78,
          //color: Colors.red,
          color: AppColors.containerColor,
          child: Row(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 8),
                width: 250,
                //color: Colors.green,
                color: AppColors.containerColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Call to Order Medicines,",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Need Medicine without any hassle? Call us now",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(25),
                  // width: 45,
                  //color: Colors.blue,
                  color: AppColors.bodyColor,
                  child: const Center(
                    child: Text("Call Now"),
                  ),
                ),
              )
            ],
          ),
        ),
      ])

          //------------------------------------------------------------------------------------------------------------------

          ),
    );
  }
}
