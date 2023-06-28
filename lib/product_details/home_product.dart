import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

import '../custom_widgets.dart';
import '../models/home_list.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        toolbarHeight: 80,
        centerTitle: true,
        title: const Text("Home Care", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(onPressed: (){
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(110, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: const BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: const Icon(Icons.sort), label: const Text("Sort By", style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
                ElevatedButton.icon(onPressed: (){
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(118, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: const BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: const Icon(Icons.location_on), label: const Text("Location", style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
                ElevatedButton.icon(onPressed: (){
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(125, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: const BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: const Icon(Icons.category), label: const Text("Category", style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
              ]
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 23, right: 23),
          child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: homeList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2),
              itemBuilder: (context, index){
                return CustomWidgets().productList(homeList[index].image, homeList[index].productName, homeList[index].logoText, homeList[index].price, homeList[index].cancelPrice);
              })
      ),
    );
  }
}
