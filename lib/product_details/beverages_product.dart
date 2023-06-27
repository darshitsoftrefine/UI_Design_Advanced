import 'package:flutter/material.dart';
import 'package:tradly/custom_widgets.dart';
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomWidgets().product_list('assets/images/strawberry.png', 'Strawberry Punch', '\$35'),
                    const SizedBox(width: 9,),
                    CustomWidgets().product_list('assets/images/lemonade.png', 'Lemonade', ''),

                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomWidgets().product_list('assets/images/chocolate.png', 'Chocolate', '\$35'),
                    const SizedBox(width: 9,),
                    CustomWidgets().product_list('assets/images/whisky.png', 'Whisky', ''),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomWidgets().product_list('assets/images/choco_bakery.png', 'Chocolate Bakery', '\$35'),
                    const SizedBox(width: 9,),
                    CustomWidgets().product_list('assets/images/fruit_punch.png', 'Fruit Punch', ''),
                  ],
                ),
              )
    ]
          ),
        ),
      ),


    );
  }
}

