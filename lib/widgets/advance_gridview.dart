import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StragGridView extends StatefulWidget {
  const StragGridView({Key? key}) : super(key: key);

  @override
  State<StragGridView> createState() => _StragGridViewState();
}

class _StragGridViewState extends State<StragGridView> {
  @override
  Widget build(BuildContext context) {
    // return StaggeredGridView.countBuilder(
    //   mainAxixSpacing:8,
    //   crossAxisSpacing:8,
    //   crossAxisCount:3,
    //   itemCount:10,
    //   itemBuilder:(context, index) => buildImgCard(index),
    //   );

    return StaggeredGridView.countBuilder(
        staggeredTileBuilder: (index) => index % 5 == 0
            ? StaggeredTile.count(2, 1)
            : StaggeredTile.count(1, 1), // it's basically for aspect ratio
        // staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        itemCount: 15,
        itemBuilder: (context, index) => buildImgCard(index));
  }

  buildImgCard(int index) {
    return Card(
      //color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 25,
      child: Image(image: AssetImage("assets/icons/doctor_icon.png")),
    );
  }
}
