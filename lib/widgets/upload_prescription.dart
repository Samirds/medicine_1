import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class UploadPrescription extends StatefulWidget {
  const UploadPrescription({Key? key}) : super(key: key);

  @override
  State<UploadPrescription> createState() => _UploadPrescriptionState();
}

class _UploadPrescriptionState extends State<UploadPrescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
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
              children: [
                const Text(
                  "Upload Prescription.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Upload a Prescription and tell  what you need. We are aloways at your Servies.",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 3,
                ),
                Container(
                  height: 30,
                  width: 75,
                  margin: EdgeInsets.all(5),
                  // width: 45,
                  //color: Colors.blue,
                  color: AppColors.bodyColor,
                  child: const Center(
                    child: Text("Upload"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(22),
              //width: 55,
              //color: Colors.blue,
              color: AppColors.bodyColor,
              child: const Center(
                // child: Text("Call Now"),
                child:
                    Image(image: AssetImage("assets/icons/Prescription.jpg")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
