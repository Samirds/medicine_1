import 'package:flutter/cupertino.dart';
import 'package:medicine_1/utils/app_colors.dart';

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  //double height;

  SmallText(
      {Key? key,
      this.color = AppColors.subTextColor,
      required this.text,
      this.size = 12.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
