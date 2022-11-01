// import 'dart:ffi';

import 'dart:ffi';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  // ------------------------------------------------------ PageView Builer's Controller ------------------------------------------------------------------------------------
  PageController pageController = PageController(
      viewportFraction:
          0.89); // 2->  it's the controller to show how proportion of it to show

  var _currentPageValue =
      0.0; // 3-> it's used for set differet picture in differnt slide

  // @override
  // void initstate() {
  //   super.initState();
  //   pageController.addListener(() {
  //     setState(() {
  //       _currentPageValue = pageController.page!;
  //     });
  //   });
  // }

  // @override
  // void dispose() {
  //   pageController.dispose();
  // }

// ------------------------------------------------------------------------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 97,
          //color: Colors.green,
          child: PageView.builder(
              controller:
                  pageController, // 2-> here we are using the created controller
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(
                    position); // 1-> we are creating a function that will take  position as a parameter
              }),
        ),
// -------------------------------------------------------------  Dot Indicator ----------------------------------------------------
        // DotsIndicator(
        //   dotsCount: 5,
        //   position: _currentPageValue,
        //   decorator: DotsDecorator(
        //     size: const Size.square(5.0),
        //     activeSize: const Size(18.0, 5.0),
        //     activeShape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(5.0)),
        //   ),
        // )

// --------------------------------------------------------------------------------------------------------------------------------------
      ],
    );
  }

// 1->creating the funtion for pageview builder
  Widget _buildPageItem(int index) {
    return Stack(children: [
      // we are using stack because we ave to overlap one widget to another
      Container(
        height: 97,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: index.isEven ? Colors.red : Colors.blue,
            image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/full_cart_img.jpg"))),
      ),

      Positioned(left: 200, bottom: 0, child: Text("data"))

      // Align(
      //     alignment: Alignment.bottomCenter,
      //     child: Container(
      //         height: 40,
      //         margin: EdgeInsets.only(left: 50, right: 50, bottom: 15),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(30),
      //           //color: index.isEven ? Colors.lime[400] : Colors.lightGreen[200],
      //           //color: Colors.white)),
      //           color: Color.fromARGB(255, 247, 231, 199),
      //         ),
      //         child: Container(
      //             child: Column(
      //           children: [
      //             Center(
      //               child: Text("fdsf"),
      //             ),
      //             Center(
      //               child: Text("fdsf"),
      //             )
      //           ],
      //         ))))
    ]);
  }
}
