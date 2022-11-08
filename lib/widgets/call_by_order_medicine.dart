import 'package:flutter/cupertino.dart';

import '../utils/app_colors.dart';

class CalbyOrderMedicine extends StatefulWidget {
  const CalbyOrderMedicine({Key? key}) : super(key: key);

  @override
  State<CalbyOrderMedicine> createState() => _CalbyOrderMedicineState();
}

class _CalbyOrderMedicineState extends State<CalbyOrderMedicine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      //color: Colors.red,
      color: AppColors.containerColor,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 8),
            width: 250,
            //color: Colors.green,
            color: AppColors.containerColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Call to Order Medicines,",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
    );
  }
}
