import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

import '../custom_widgets.dart';
import '../models/fruit_list.dart';

class FruitProduct extends StatelessWidget {
  const FruitProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        toolbarHeight: 90,
        centerTitle: true,
        title: const Text("Fruit", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
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
                    fixedSize: const Size(120, 30),
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
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 23, right: 23),
        child: GridView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: vegeList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2),
            itemBuilder: (context, index){
              return CustomWidgets().productList(vegeList[index].image, vegeList[index].productName, vegeList[index].logoText, vegeList[index].price, vegeList[index].cancelPrice);
            }),
      ),
    );
  }
}
