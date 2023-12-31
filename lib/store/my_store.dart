import 'package:flutter/material.dart';
import 'package:tradly/image_constants.dart';
import '../cart/cart_add_address.dart';
import '../home_screens/wishlist_screen.dart';
import '../themes/themes.dart';
import 'create_store.dart';

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: const Text("My Store", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WishlistScreen()),
            );
          }, icon: const Icon(Icons.favorite, color: Colors.white,)),
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartAddAddress()),
            );
          }, icon: const Icon(Icons.shopping_cart, color: Colors.white,)),
          const SizedBox(width: 15,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 57, left: 40, right: 40, bottom: 10),
        child: Column(
          children: [
            Center(child: Image.asset(ImageConstants.storeMainImage)),
            const SizedBox(height: 28,),
            const Text("You Don't Have a Store", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            const SizedBox(height: 37,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CreateStore()),
              );
            },   style: ElevatedButton.styleFrom(
              fixedSize: const Size(229, 48),
              backgroundColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
              child: const Text(
                "Create Store",
                style: TextStyle(fontSize: 18, color:Colors.white, fontWeight: FontWeight.bold),
              ),),
          ],
        ),
      ),
    );
  }
}
