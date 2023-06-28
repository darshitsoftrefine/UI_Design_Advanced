import 'package:flutter/material.dart';
import 'package:tradly/custom_widgets.dart';
import 'package:tradly/models/beverages_list.dart';
import 'package:tradly/themes/themes.dart';

class BeveragesProduct extends StatelessWidget {
  const BeveragesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.primaryColor,
          toolbarHeight: 90,
          centerTitle: true,
          title: const Text("Beverages", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
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
                    side: const BorderSide(width: 1, color: Colors.white,),
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
              itemCount: browseList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2),
              itemBuilder: (context, index){
                return CustomWidgets().product_list(browseList[index].image, browseList[index].productName, browseList[index].logoText, browseList[index].price, browseList[index].cancelPrice);
              })
      ),


    );
  }
}

