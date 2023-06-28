import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

import '../custom_widgets.dart';
import '../models/browse_list.dart';
import '../product_details/product_detail.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text("Wishlist", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 23, right: 23, bottom: 20),
          child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: browseList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2),
              itemBuilder: (context, index){
                return CustomWidgets().browsepage(browseList[index].image, browseList[index].productName);
              })
      ),
    );
  }
}
