import 'package:flutter/material.dart';
import 'package:medicine_1/Pages/Medicine_pages/MedicinePageList/DetailsMedicine/medicine_details.dart';
import 'package:medicine_1/Pages/Medicine_pages/order_medicine.dart';
import 'package:medicine_1/Pages/home/page_view_homePage.dart';
import 'package:medicine_1/widgets/Tab%20Bar%20Class/tab_bar_pages/description.dart';
import 'package:medicine_1/widgets/advance_gridview.dart';
import 'package:medicine_1/widgets/ff.dart';
import 'package:medicine_1/widgets/grid_view.dart';
import 'package:medicine_1/widgets/search_bar.dart';
import 'Pages/Medicine_pages/MedicinePageList/medicine_list.dart';
import 'Pages/home_page.dart';
import 'Pages/main_page_bofdy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SearchBar(),
      //home: MainPageBody(),
      //home: HomePageView(),
      //home: Drawer(),
      //home: MedicinePage(),
      //home: HomePageView(),
      //home: OrderMedicine(),
      //home: StragGridView(),
      //home: MedicibeList(),
      home: MedicineDetails(),
      //home: Description(),
    );
  }
}
