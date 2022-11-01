import 'package:flutter/material.dart';
import 'package:medicine_1/widgets/small_text.dart';

class ImageAndTextWidget extends StatelessWidget {
  //final IconData icon;
  final String imgPath;
  final String text;
  final Color? color;
  final Color? iconColor;
  const ImageAndTextWidget(
      {Key? key,
      //required this.icon,
      required this.imgPath,
      required this.text,
      this.color,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          margin: EdgeInsets.only(top: 3),
          height: 82,
          width: 105,
          color: Color.fromARGB(255, 250, 248, 225),
          //color: Colors.black,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SmallText(text: text),
          )),
      Align(
        alignment: Alignment.topCenter,
        child: Container(
            height: 68,
            width: 105,
            //color: Colors.white,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imgPath)))),
      ),
    ]);
  }
}
