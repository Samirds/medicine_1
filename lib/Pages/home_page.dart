import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine_1/Pages/home/shop_by_category.dart';
import 'package:medicine_1/utils/app_colors.dart';

import '../widgets/advance_gridview.dart';
import '../widgets/call_by_order_medicine.dart';
import '../widgets/grid_view.dart';
import '../widgets/image_and_text_widget.dart';
import '../widgets/shop_by_category.dart';
import 'home/page_view_homePage.dart';

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
        ////////---------------------------------------------------------- Page View ------------------------------------------------------------------------------------>
        const SizedBox(height: 10),
        const HomePageView(),
        ////////---------------------------------------------------------- Explore categories Start ------------------------------------------------------------------------------------>
        Container(
          height: 133,
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
                children: const [
                  SizedBox(
                    width: 35,
                  ),
                  // ------------------------------------------------------------Stack 1 (Explore categories) ---------------------------------------------------------------------------

                  ImageAndTextWidget(
                    imgPath: "assets/images/pharma.jpg",
                    text: "Consult Doctor",
                  ),

                  //------------------------------------------------------------------------------------------------------------------------------

                  SizedBox(
                    width: 5,
                  ),
                  //----------------------------------------------------- Stack 2 (Explore categories) --------------------------------------------------------------

                  ImageAndTextWidget(
                    imgPath: "assets/images/medicine.jpg",
                    text: "Medicine",
                  ),
                  // ---------------------------------------------------------------------------------------------------------------------------------
                  SizedBox(
                    width: 5,
                  ),
                  //-----------------------------------------------------------Stack 3 (Explore categories) -----------------------------------------------------------------------

                  ImageAndTextWidget(
                    imgPath: "assets/images/lab.jpg",
                    text: "Lab Test",
                  ),
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

        ShopByCategory(
          contHeight: 55,
          itemCount: 5,
          listContHeight: 55,
          listContwidth: 160,
          imgContHeight: 55,
          imgContwidth: 55,
          imgPath: "assets/images/pills.jpg",
          text: "Bays dsasf",
          textSize: 12,
        ),

        //------------------------------------------------------------ Shop By Category  Start ------------------------------------------------

        // Container(
        //   margin: EdgeInsets.only(left: 5, right: 5),
        //   height: 55,
        //   //color: Colors.blue,
        //   //color: AppColors.containerColor,
        //   child: ListView.builder(
        //       scrollDirection: Axis.horizontal,
        //       itemCount: 7,
        //       itemBuilder: (context, position) {
        //         return Container(
        //           height: 55,
        //           width: 160,
        //           margin: const EdgeInsets.only(
        //             left: 5,
        //             right: 5,
        //           ),
        //           child: Row(
        //             children: [
        //               // image section
        //               Container(
        //                 height: 55,
        //                 width: 55,
        //                 decoration: const BoxDecoration(
        //                   borderRadius: BorderRadius.only(
        //                       topLeft: Radius.circular(12),
        //                       bottomLeft: Radius.circular(12)),
        //                   //color: Colors.green,
        //                   color: AppColors.containerColor,
        //                 ),
        //                 child: Padding(
        //                   padding: const EdgeInsets.only(
        //                       left: 5, right: 10, top: 5, bottom: 5),
        //                   child: Image.asset(
        //                     "assets/images/pills.jpg",
        //                   ),
        //                 ),
        //                 // image: DecorationImage(
        //                 //     fit: BoxFit.cover,
        //                 //     image: AssetImage(
        //                 //         "assets/images/pills.jpg"))
        //               ),

        //               // Padding(padding: EdgeInsets.all(15),
        //               // child: Image.asset("assets/images/pills.jpg"),

        //               // text section
        //               Expanded(
        //                 child: Container(
        //                   //width: 55,
        //                   //height: 85,
        //                   decoration: const BoxDecoration(
        //                       boxShadow: [
        //                         BoxShadow(
        //                             color: Color.fromARGB(255, 156, 155, 154),
        //                             blurRadius: 3.0,
        //                             offset: Offset(2, 3)),
        //                       ],
        //                       borderRadius: BorderRadius.only(
        //                           topRight: Radius.circular(12),
        //                           bottomRight: Radius.circular(12)),
        //                       //color: Colors.red,
        //                       color: AppColors.containerColor),
        //                   child: const Padding(
        //                     padding: EdgeInsets.only(left: 15, right: 10),
        //                     child: Center(
        //                         child: Text(
        //                       "Baby's Product",
        //                       style: TextStyle(color: AppColors.mainTextColor),
        //                     )),
        //                   ),
        //                 ),
        //               )
        //             ],
        //           ),
        //         );
        //       }),
        // ),
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
            //child: GtidViewPage(),
            child: StragGridView(),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        //------------------------------------------------- Call by Medicine --------------------------------------------

        CalbyOrderMedicine(),

        //-----------------------------------------------------------------------------------------
      ])

          //------------------------------------------------------------------------------------------------------------------

          ),
    );
  }
}
