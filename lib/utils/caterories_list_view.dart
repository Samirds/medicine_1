// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class CategoryListView extends StatelessWidget {
//   final String categoryName;
//   final String imgPath;

//   const CategoryListView(
//       {Key? key, required this.categoryName, required this.imgPath})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         //image: DecorationImage(image: AssetImage()),
//       ),
//       child: Row(children: [
//         Container(
//           height: 45,
//           width: 65,
//           child: Image.asset(imgPath),
//           // decoration: BoxDecoration(
//           //     color: Colors.black,
//           //     image: DecorationImage(
//           //         fit: BoxFit.cover, image: AssetImage(imgPath))),
//         ),
//         Container(
//           child: Text(categoryName),
//         ),
//       ]),
//     );
//   }
// }
