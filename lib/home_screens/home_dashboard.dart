import 'package:flutter/material.dart';
import 'package:tradly/bottom_bar.dart';
import 'package:tradly/constants/custom_field.dart';
import 'package:tradly/custom_widgets.dart';
import 'package:tradly/home_screens/browse.dart';
import 'package:tradly/home_screens/wishlist_screen.dart';
import 'package:tradly/models/new_product_list.dart';
import 'package:tradly/product_details/beverages_product.dart';
import 'package:tradly/product_details/fruit_product.dart';
import 'package:tradly/product_details/home_product.dart';
import 'package:tradly/product_details/pet_product.dart';
import 'package:tradly/product_details/vegetables_product.dart';
import 'package:tradly/themes/themes.dart';

import '../cart/cart_add_address.dart';
import '../models/popular_product_list.dart';
import '../product_details/bread_product.dart';
import '../product_details/egg_product.dart';
import '../product_details/frozen_product.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {

  TextEditingController control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        toolbarHeight: 163,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          padding: const EdgeInsets.only(bottom: 20.0, top: 20.0, left: 15, right: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Groceries", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),),
                  SizedBox(width: 100,),
                  IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.white,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const WishlistScreen()),
                      );
                    },
                  ),

                  Stack(
                    children:[ IconButton(
                      icon: const Icon(Icons.shopping_cart, color: Colors.white,),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CartAddAddress()),
                        );
                      },
                    ),
                      const Positioned(
                        top: 10,
                        left: 15,
                        right: 5,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 5,
                        ),
                      )
        ],
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              TextFormField(
                enabled: true,
                style: const TextStyle(color: Colors.white),
                controller: control,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Search Product',
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.search),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomWidgets().card_home_dashboard('assets/images/food_home.png', 'READY TO DELIVER TO \n YOUR HOME'),
                    SizedBox(width: 10,),
                    CustomWidgets().card_home_dashboard('assets/images/food_home.png', 'READY TO DELIVER TO \n YOUR HOME'),
                    SizedBox(width: 10,),
                    CustomWidgets().card_home_dashboard('assets/images/food_home.png', 'READY TO DELIVER TO \n YOUR HOME'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: GridView.count(
                shrinkWrap: true,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                crossAxisCount: 4,
                children: [
                  CustomWidgets().grid_cards('assets/images/Rectangle 28.png', "Beverages", 40, 20, 8, 7, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BeveragesProduct()),
                    );
                  },),
                  CustomWidgets().grid_cards('assets/images/Rectangle 29.png', "Bread&Bakery", 40, 20, 0, 0, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BreadProduct()),
                    );
                  },),
                  CustomWidgets().grid_cards('assets/images/Rectangle 30.png', "Vegetables", 40.0, 20, 10, 8, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const VegetableProduct()),
                    );
                  },),
                  CustomWidgets().grid_cards('assets/images/Rectangle 31.png', "Fruits", 40, 20, 27, 0,  () {
                        Navigator.push(
                         context,
                           MaterialPageRoute(builder: (context) => const FruitProduct()),
                      );
                      },),
                  CustomWidgets().grid_cards('assets/images/Rectangle 32.png', "Egg", 40, 20, 35, 8,  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EggProduct()),
                    );
                  },),
                  CustomWidgets().grid_cards('assets/images/Rectangle 33.png', "Frozen Veg", 40, 20, 8, 8,  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FrozenProduct()),
                    );
                  },),
                  CustomWidgets().grid_cards('assets/images/Rectangle 34.png', "Homecare", 40, 20, 13, 8,  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeProduct()),
                    );
                  },),
                  CustomWidgets().grid_cards('assets/images/Rectangle 35.png', "Pet Care", 40, 20, 22, 8,  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PetProduct()),
                    );
                  },)
                ],
                
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("New Product", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  const SizedBox(width: 100,),
                  ElevatedButton(onPressed: (){

                  },
                    style: ElevatedButton.styleFrom(
                    fixedSize: const Size(100, 20),
                    backgroundColor: CustomColors.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)),
                  ),
                    child: const Text(
                      "See All",
                      style: TextStyle(fontSize: 15, color:Colors.white),
                    ),),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(newProductList.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      child: Container(
                        width: 160,
                        height: 190,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(newProductList[index].image),
                            SizedBox(height: 10,),
                            Text(" "+newProductList[index].productName, style: TextStyle(fontWeight: FontWeight.w500),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: 2,),
                                CircleAvatar(
                                  backgroundColor: CustomColors.primaryColor,
                                  radius: 10,
                                  child: Text('T'),
                                ),
                                SizedBox(width: 3,),
                                Text(newProductList[index].logoText),
                                SizedBox(width: 55,),
                                Text(newProductList[index].price, style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),),
                                //SizedBox(width: 15,)
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  })
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Popular Product", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  const SizedBox(width: 65,),
                  ElevatedButton(onPressed: (){

                  },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 20),
                      backgroundColor: CustomColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    child: const Text(
                      "See All",
                      style: TextStyle(fontSize: 15, color:Colors.white),
                    ),),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(popularProductList.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5.0, left: 5.0),
                      child: Container(
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(popularProductList[index].image),
                            SizedBox(height: 10,),
                            Text(" "+popularProductList[index].productName, style: TextStyle(fontWeight: FontWeight.w500),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: CustomColors.primaryColor,
                                  radius: 10,
                                  child: Text('T'),
                                ),
                                SizedBox(width: 3,),
                                Text(popularProductList[index].logoText),
                                SizedBox(width: 55,),
                                Text(popularProductList[index].price, style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 500,
              height: 300,
              color: CustomColors.primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Store to Follow", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
                        const SizedBox(width: 70,),
                        ElevatedButton(onPressed: (){

                        },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(110, 20),
                            backgroundColor: CustomColors.secondaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32)),
                          ),
                          child: const Text(
                            "View All",
                            style: TextStyle(fontSize: 15, color:Color(0xFF13B58C)),
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CustomWidgets().store_fol('assets/images/trad_store.png', CustomColors.primaryColor, 'T', 'Tradly Store'),
                          SizedBox(width: 10,),
                          CustomWidgets().store_fol('assets/images/groc_stor.png', CustomColors.circColor, 'A', 'Groceries Store'),
                          SizedBox(width: 10,),
                          CustomWidgets().store_fol('assets/images/trad_store.png', CustomColors.primaryColor, 'T', 'Tradly Store'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


