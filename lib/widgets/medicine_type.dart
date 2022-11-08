import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class MedicineType extends StatelessWidget {
  final String ImagePath;
  final String medicineType;
  final String cost;
  final Color color;
  const MedicineType(
      {Key? key,
      required this.ImagePath,
      required this.color,
      required this.cost,
      required this.medicineType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        //color: Colors.red,
        color: AppColors.bodyColor,
      ),
      margin: EdgeInsets.all(15),
      width: 160,
      height: 117,
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(ImagePath))),
            ),
          ),
          Center(
            child: Text(
              medicineType,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(cost, style: TextStyle(fontSize: 10, color: color)),
          ),
        ],
      ),
    );
  }
}
