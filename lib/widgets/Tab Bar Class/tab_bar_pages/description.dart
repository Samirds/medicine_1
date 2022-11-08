import 'package:flutter/material.dart';
import 'package:medicine_1/utils/app_colors.dart';

import 'expandable_text.dart';

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        //height: 100,
        color: AppColors.containerColor,
        child: SingleChildScrollView(
          child: ExpendableText(
              text:
                  "Hi I am Samir Das from Sonarpur which located at ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddkolkata 150, in West Bengal, a State of India which is a Country of Asia Contient that is the Bigest Continent among Seven in World that is the not as large as venus it's co-planet revolving around sun, which is also a revoloving part of Milkyway Galaxy, that is a also sub part of another body and it's going onnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn"),
        ),
      ),
    );
  }
}
