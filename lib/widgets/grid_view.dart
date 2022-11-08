import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicine_1/utils/app_colors.dart';

class GtidViewPage extends StatefulWidget {
  const GtidViewPage({Key? key}) : super(key: key);

  @override
  State<GtidViewPage> createState() => _GtidViewPageState();
}

class _GtidViewPageState extends State<GtidViewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        //color: Colors.blue,
        color: AppColors.containerColor,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 100,
              //childAspectRatio: 1.3,
            ),
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return ClipRRect(
                child: Container(
                  color: Colors.white,
                  child: const Image(
                    image: AssetImage(
                      "assets/icons/doctor_icon.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }));
  }
}
