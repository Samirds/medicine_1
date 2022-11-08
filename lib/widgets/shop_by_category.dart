import 'package:flutter/material.dart';
import 'package:medicine_1/widgets/small_text.dart';

import '../utils/app_colors.dart';

class ShopByCategory extends StatelessWidget {
  double contHeight;
  int itemCount;
  double listContHeight;
  double listContwidth;
  double imgContHeight;
  double imgContwidth;
  String imgPath;
  String text;
  double textSize;
  ShopByCategory(
      {Key? key,
      required this.contHeight,
      required this.itemCount,
      required this.listContHeight,
      required this.listContwidth,
      required this.imgContHeight,
      required this.imgContwidth,
      required this.imgPath,
      required this.text,
      required this.textSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      height: contHeight,
      //color: Colors.blue,
      //color: AppColors.containerColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (context, position) {
            return Container(
              height: listContHeight,
              width: listContwidth,
              margin: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              child: Row(
                children: [
                  // image section
                  Container(
                    height: imgContHeight,
                    width: imgContwidth,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12)),
                      //color: Colors.green,

                      color: AppColors.containerColor,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(imgPath), fit: BoxFit.cover)),
                      ),
                    ),
                  ),

                  // text section
                  Expanded(
                      child: Container(
                    //width: 55,
                    //height: 85,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 156, 155, 154),
                              blurRadius: 3.0,
                              offset: Offset(2, 3)),
                        ],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12)),
                        //color: Colors.red,
                        color: AppColors.containerColor),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 10),
                      child: Center(
                        //child: SmallText(text: text),
                        child: Text(
                          text,
                          style: TextStyle(
                              fontSize: textSize,
                              color: AppColors.mainTextColor),
                        ),

                        //     child: Text(
                        //    "Baby's Product",
                        //   // text,
                        //   style: TextStyle(color: AppColors.mainTextColor),
                        // )),
                      ),
                    ),
                  ))
                ],
              ),
            );
          }),
    );
  }
}
