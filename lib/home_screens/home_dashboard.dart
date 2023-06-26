import 'package:flutter/material.dart';
import 'package:tradly/bottom_bar.dart';
import 'package:tradly/constants/custom_field.dart';
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
                  const SizedBox(width: 104,),
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
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/food_home.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("READY TO DELIVER TO \n YOUR HOME", style: TextStyle(color: Colors.white, fontSize: 14),),
                              SizedBox(height: 10,),
                              ElevatedButton(onPressed: (){

                              },   style: ElevatedButton.styleFrom(
                                fixedSize: const Size(151, 28),
                                backgroundColor: Colors.transparent,
                                side: const BorderSide(color: Colors.white, width: 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                                child: const Text(
                                  "START SHOPPING",
                                  style: TextStyle(fontSize: 12, color:Colors.white),
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Stack(
                      children: [
                        Image.asset('assets/images/food_home.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 15),
                          child: Column(
                            children: [
                              Text("READY TO DELIVER TO \n YOUR HOME", style: TextStyle(color: Colors.white, fontSize: 15),),
                              SizedBox(height: 17,),
                              ElevatedButton(onPressed: (){

                              },   style: ElevatedButton.styleFrom(
                                fixedSize: const Size(151, 28),
                                backgroundColor: Colors.transparent,
                                side: const BorderSide(color: Colors.white, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                                child: const Text(
                                  "START SHOPPING",
                                  style: TextStyle(fontSize: 12, color:Colors.white),
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Stack(
                      children: [
                        Image.asset('assets/images/food_home.png'),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, left: 15),
                          child: Column(
                            children: [
                              Text("READY TO DELIVER TO \n YOUR HOME", style: TextStyle(color: Colors.white, fontSize: 15),),
                              SizedBox(height: 17,),
                              ElevatedButton(onPressed: (){

                              },   style: ElevatedButton.styleFrom(
                                fixedSize: const Size(151, 28),
                                backgroundColor: Colors.transparent,
                                side: const BorderSide(color: Colors.white, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                                child: const Text(
                                  "START SHOPPING",
                                  style: TextStyle(fontSize: 12, color:Colors.white),
                                ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                     children:[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const BeveragesProduct()),
                          );
                        },
                          child: Image.asset('assets/images/Rectangle 28.png', width: 100,)),
                       const Padding(
                         padding: EdgeInsets.only(top: 40.0, left: 12, right: 8, bottom: 20),
                         child: Text("Beverages", style: TextStyle(color: Colors.white, fontSize: 13),),
                       ),
                     ]
    ),
                    Stack(
                        children:[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const BreadProduct()),
                                );
                              },
                              child: Image.asset('assets/images/Rectangle 29.png', width: 100,)),
                          const Padding(
                            padding: EdgeInsets.only(top: 40.0, bottom: 20),
                            child: Text("Bread Bakery", style: TextStyle(color: Colors.white, fontSize: 13),),
                          ),
                        ]
                    ),
                    Stack(
                        children:[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const VegetableProduct()),
                                );
                              },
                              child: Image.asset('assets/images/Rectangle 30.png', width: 100,)),
                          const Padding(
                            padding: EdgeInsets.only(top: 40.0, left: 10, right: 8, bottom: 20),
                            child: Text("Vegetables", style: TextStyle(color: Colors.white, fontSize: 13),),
                          ),
                        ]
                    ),
                    Stack(
                        children:[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const FruitProduct()),
                                );
                              },
                              child: Image.asset('assets/images/Rectangle 31.png', width: 100,)),
                          const Padding(
                            padding: EdgeInsets.only(top: 40.0, bottom: 20, left: 27),
                            child: Text("Fruits", style: TextStyle(color: Colors.white, fontSize: 13),),
                          ),
                        ]
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                        children:[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const EggProduct()),
                                );
                              },
                              child: Image.asset('assets/images/Rectangle 32.png', width: 100,)),
                          const Padding(
                            padding: EdgeInsets.only(top: 40.0, left: 35, right: 8, bottom: 20),
                            child: Text("Egg", style: TextStyle(color: Colors.white, fontSize: 13),),
                          ),
                        ]
                    ),
                    Stack(
                        children:[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const FrozenProduct()),
                                );
                              },
                              child: Image.asset('assets/images/Rectangle 33.png', width: 100,)),
                          const Padding(
                            padding: EdgeInsets.only(top: 40.0, left: 8, right: 8, bottom: 20),
                            child: Text("Frozen Veg", style: TextStyle(color: Colors.white, fontSize: 13),),
                          ),
                        ]
                    ),
                    Stack(
                        children:[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomeProduct()),
                              );
                            },
                              child: Image.asset('assets/images/Rectangle 34.png', width: 100,)),
                          const Padding(
                            padding: EdgeInsets.only(top: 40.0, left: 13, right: 8, bottom: 20),
                            child: Text("Homecare", style: TextStyle(color: Colors.white, fontSize: 13),),
                          ),
                        ]
                    ),
                    Stack(
                        children:[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const PetProduct()),
                                );
                              },
                              child: Image.asset('assets/images/Rectangle 35.png', width: 100,)),
                          const Padding(
                            padding: EdgeInsets.only(top: 40.0, left: 22, right: 8, bottom: 20),
                            child: Text("Pet Care", style: TextStyle(color: Colors.white, fontSize: 13),),
                          ),
                        ]
                    ),

                  ],
                ),
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
                          border: Border.all(color: Colors.grey.shade300)
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
                  children: List.generate(popularProductList.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5.0, left: 5.0),
                      child: Container(
                        width: 160,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
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
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image.asset('assets/images/Store.png'),
                          const SizedBox(width: 5,),
                          Image.asset('assets/images/Storing.png'),
                          const SizedBox(width: 5,),
                          Image.asset('assets/images/Store.png'),
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


