import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine_1/utils/app_colors.dart';
import 'package:medicine_1/widgets/Tab%20Bar%20Class/medicine_info_tab_bar.dart';
import 'package:medicine_1/widgets/Tab%20Bar%20Class/tab_bar_pages/expandable_text.dart';
import 'package:medicine_1/widgets/ff.dart';

class MedicineDetails extends StatelessWidget {
  const MedicineDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bodyColor,
        body: Stack(
          children: [
            //------------------------------------------ Imagr Part ------------------------------------------------------
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/blood_sample.jpg"))),
                )),
            Positioned(
                left: 0,
                right: 0,
                top: 280,
                bottom: 0,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 15, top: 10, right: 15),
                        decoration: const BoxDecoration(
                            //color: Colors.white,
                            color: AppColors.containerColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Expanded(
                                      child: Text(
                                    "Savlon's Mask ssssssss dddddddddd eeeeeeeee ssssssssss dddd rrrrr fffffffff eeeeeeeeeee sssssssssssssssssssssssssssssssssssssssss",
                                    style: TextStyle(
                                        height: 1.6,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 88, 88, 88)),
                                    softWrap: false,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ))
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Medicine Company Name",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 19, 90, 243)),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "\$  173.19",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 23, 23, 24),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // -------------------------------------- Added to Card Button ----------------------------------
                                  Container(
                                      height: 35,
                                      width: 130,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          //borderRadius: BorderRadius.circular(10),
                                          color: Color.fromARGB(
                                              255, 107, 235, 48)),
                                      child: Center(
                                        child: Text("Added to Card"),
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "best Before : Jul 2025",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 79, 79, 82),
                                  fontSize: 12,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ])),
                    const SizedBox(
                      height: 7,
                    ),
                    Container(
                      height: 65,
                      //width: double.maxFinite,
                      //color: AppColors.containerColor,
                      //color: Colors.red,
                      color: AppColors.containerColor,

                      child: Row(
                        children: [
                          // ------------------------------- Delivery Location -----------------------------
                          Container(
                            padding: EdgeInsets.only(left: 10, top: 20),
                            height: 65,
                            width: 250,
                            //color: Colors.blue,
                            color: AppColors.containerColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                    text: const TextSpan(
                                        text: "Delivery to : ",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 58, 58, 58),
                                          fontSize: 14,
                                        ),
                                        children: [
                                      TextSpan(
                                          text: "Sonarpur",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold))
                                    ])),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                    "Get it By :    WednesDay, 09/011/2022",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 63, 62, 62),
                                      fontSize: 12,
                                    ))
                              ],
                            ),
                          ),
                          //------------------------------- Icon Change Pin ---------------------------------------------
                          // Container(
                          //   height: 45,
                          //   width: 105,
                          //   decoration: BoxDecoration(
                          //     color: Color.fromARGB(255, 100, 199, 230),
                          //     borderRadius: BorderRadius.circular(15),
                          //   ),
                          //   //width: 200,
                          //   //color: Colors.green,
                          //   padding: EdgeInsets.all(10),
                          //   child: const Center(
                          //       child: Text(
                          //     "Change Pin",
                          //     style: TextStyle(
                          //       color: Colors.white,
                          //     ),
                          //   )),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),

                    //-------------------------------------------------------- Medicine Info TabBar --------------------------------------------------------
                    Expanded(
                      child: Container(
                        height: 140,
                        //color: Colors.red,
                        color: AppColors.containerColor,
                        child: MedicineInfoTabBar(),
                      ),
                    )
                  ],
                ))
          ],
        ),
        // bottomNavigationBar: Container(
        //   height: 180,
        //   //color: Colors.green,
        //   //padding: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
        //   padding: EdgeInsets.all(10),
        //   decoration: const BoxDecoration(
        //       //color: Colors.white,
        //       color: Colors.blue,
        //       borderRadius: BorderRadius.only(
        //           topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        //   // child: Center(
        //   //   child: Text("Added to Card"),
        //   // ),
        //   child: Expanded(
        //     child: SingleChildScrollView(
        //       child: ExpendableText(
        //           text:
        //               "Hi I am Samir Das from Sonarpur which located at kolkata 150, in West Bengal, a State of India which is a Country of Asia Contient that is the Bigest Continent among Seven in World that is the not as large as venus it's co-planet revolving around sun, which is also a revoloving part of Milkyway Galaxy, that is a also sub part of another body and it's going onnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn"),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
