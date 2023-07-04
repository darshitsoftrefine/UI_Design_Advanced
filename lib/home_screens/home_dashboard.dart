import 'package:flutter/material.dart';
import 'package:tradly/custom_widgets.dart';
import 'package:tradly/home_screens/wishlist_screen.dart';
import 'package:tradly/image_constants.dart';
import 'package:tradly/models/fol_store_list.dart';
import 'package:tradly/models/new_product_list.dart';
import 'package:tradly/models/product_grid_list.dart';
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
import '../string_constants.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {

  final TextEditingController _control = TextEditingController();
  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.primaryColor,
          toolbarHeight: 187,
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
                    const SizedBox(width: 100,),
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
                const SizedBox(height: 15,),
                TextFormField(
                  enabled: true,
                  style: const TextStyle(color: Colors.white),
                  controller: _control,
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
                padding: const EdgeInsets.only(left: 8, top: 15, right: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: CustomWidgets().cardHomeDashboard(ImageConstants.homeDashBoardCardImage, ConstantStrings.homeDashboardCardText)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: prodList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 2,
                      crossAxisSpacing: 2,
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                         if(prodList[index].productName == "Beverages"){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const BeveragesProduct()),
                           );
                         }else if(prodList[index].productName == "Bread&Bakery"){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const BreadProduct()),
                           );
                         }else if(prodList[index].productName == "Vegetables"){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const VegetableProduct()),
                           );
                         }else if(prodList[index].productName == "Fruits"){
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FruitProduct()),
                            );
                         }else if(prodList[index].productName == "Egg"){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const EggProduct()),
                           );
                         }else if(prodList[index].productName == "Frozen Veg"){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const FrozenProduct()),
                           );
                         }else if(prodList[index].productName == "Homecare"){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const HomeProduct()),
                           );
                         }else if(prodList[index].productName == "Pet Care"){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const PetProduct()),
                           );
                         }
                        },
                        child: CustomWidgets().gridCards(prodList[index].image, prodList[index].productName, prodList[index].top, prodList[index].left, prodList[index].right, prodList[index].bottom));
                  },

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
                    return CustomWidgets().newProduct(newProductList[index].image, newProductList[index].productName, newProductList[index].logoText, newProductList[index].price);
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
                      return CustomWidgets().newProduct(popularProductList[index].image, popularProductList[index].productName, popularProductList[index].logoText, popularProductList[index].price);
                    })
                ),
              ),
              const SizedBox(height: 10,),
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
                      child: SizedBox(
                        height: 200,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: List.generate(folProductList.length, (index) {
                             return CustomWidgets().storfollow(folProductList[index].image, folProductList[index].color, folProductList[index].logo, folProductList[index].logoText);

                          }),
                        ),
                      )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


