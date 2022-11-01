import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopByCategory extends StatefulWidget {
  const ShopByCategory({Key? key}) : super(key: key);

  @override
  State<ShopByCategory> createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
  PageController pageController = PageController(
      viewportFraction:
          0.35); // 2->  it's the controller to show how proportion of it to show

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      //color: Colors.green,
      child: PageView.builder(
          controller:
              pageController, // 2-> here we are using the created controller
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(
                position); // 1-> we are creating a function that will take  position as a parameter
          }),
    );
  }

// 1->creating the funtion for pageview builder
  Widget _buildPageItem(int index) {
    return Stack(children: [
      // we are using stack because we ave to overlap one widget to another
      Container(
        height: 30,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: index.isEven ? Colors.red : Colors.blue,
        ),
      ),

      //Positioned(left: 200, bottom: 0, child: Text("data"))

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
