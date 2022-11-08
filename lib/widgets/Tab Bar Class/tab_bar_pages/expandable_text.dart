import 'package:flutter/material.dart';
import 'package:medicine_1/widgets/small_text.dart';

class ExpendableText extends StatefulWidget {
  final String text;
  const ExpendableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpendableText> createState() => _ExpendableTextState();
}

class _ExpendableTextState extends State<ExpendableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = 300;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.isEmpty
            ? SmallText(text: firstHalf)
            : Column(
                children: [
                  SmallText(
                      text: hiddenText
                          ? (firstHalf + "...")
                          : (firstHalf + secondHalf)),
                  InkWell(
                    onTap: () {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                    },
                    child: Row(
                      children: [
                        hiddenText
                            ? SmallText(
                                text: "Show More",
                                color: Colors.red,
                              )
                            : SmallText(
                                text: "Show Less",
                                color: Colors.red,
                              ),
                        // SmallText(
                        //       text: "Show More",
                        //   color: Colors.red,
                        // ),
                        Icon(
                          hiddenText
                              ? Icons.arrow_drop_down
                              : Icons.arrow_drop_up,
                          color: Color.fromARGB(255, 58, 243, 33),
                        )
                      ],
                    ),
                  )
                ],
              ));
  }
}
