import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine_1/Pages/Medicine_pages/search_functionalitires.dart';
import 'package:medicine_1/utils/app_colors.dart';
import 'package:medicine_1/widgets/reuseable_appbar.dart';
import 'package:medicine_1/widgets/small_text.dart';

import '../../widgets/call_by_order_medicine.dart';
//    import '../../widgets/grid_view.dart';
import '../../widgets/medicine_type.dart';
import '../../widgets/shop_by_category.dart';
import '../../widgets/upload_prescription.dart';
import '../home/page_view_homePage.dart';
import 'package:medicine_1/widgets/reuseable_appbar.dart';

class OrderMedicine extends StatefulWidget {
  const OrderMedicine({Key? key}) : super(key: key);

  @override
  State<OrderMedicine> createState() => _OrderMedicineState();
}

class _OrderMedicineState extends State<OrderMedicine> {
  get width => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Scaffold(
          backgroundColor: AppColors.bodyColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                //------------------------------------------------- Uploads Prescriptions -----------------------------------------
                UploadPrescription(),
                //---------------------------------------------- HomePage View ----------------------------------
                const SizedBox(
                  height: 15,
                ),
                HomePageView(),
                //------------------------------------------------------  Generic Medicine -------------------------------------------------
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, right: 5),
                  height: 170,
                  //color: Colors.yellow,
                  color: AppColors.containerColor,
                  child: Column(
                    children: [
                      const Text(
                        "Story of Medicine",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      // SizedBox(
                      //   height: 15,
                      // ),
                      Row(
                        children: const [
                          // Container(
                          //   decoration: BoxDecoration(
                          //     borderRadius:
                          //         BorderRadius.all(Radius.circular(15)),
                          //     //color: Colors.red,
                          //     color: AppColors.bodyColor,
                          //   ),
                          //   margin: EdgeInsets.all(15),
                          //   width: 171,
                          //   height: 117,
                          //   child: Column(
                          //     children: [
                          //       Center(
                          //         child: Container(
                          //           margin: EdgeInsets.all(10),
                          //           height: 50,
                          //           width: 50,
                          //           decoration: BoxDecoration(
                          //               shape: BoxShape.circle,
                          //               image: DecorationImage(
                          //                   fit: BoxFit.cover,
                          //                   image: AssetImage(
                          //                       "assets/icons/syring2.jpg"))),
                          //         ),
                          //       ),
                          //       Center(
                          //         child: Text(
                          //           "Branded Medicine",
                          //           style: TextStyle(
                          //               fontWeight: FontWeight.bold,
                          //               fontSize: 15),
                          //         ),
                          //       ),
                          //       SizedBox(height: 5),
                          //       Center(
                          //         child: Text("Constlier",
                          //             style: TextStyle(
                          //                 fontSize: 10, color: Colors.red)),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          MedicineType(
                            ImagePath: "assets/icons/syring2.jpg",
                            color: Colors.green,
                            cost: "Lower",
                            medicineType: "Generic",
                          ),

                          MedicineType(
                            ImagePath: "assets/icons/syring.jpg",
                            color: Colors.red,
                            cost: "Costlier",
                            medicineType: "Branded",
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                //------------------------------------------------------------------- Call By Order ---------------------------------------------------------
                CalbyOrderMedicine(),

                //------------------------------------------------------------------- Show Category ---------------------------------------------------------
                const SizedBox(
                  height: 15,
                ),

                ShopByCategory(
                  contHeight: 85,
                  itemCount: 5,
                  listContHeight: 85,
                  listContwidth: 170,
                  imgContHeight: 85,
                  imgContwidth: 70,
                  imgPath: "assets/icons/mask_icon.jpg",
                  text: "Baby's Prfddfoduct",
                  textSize: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
