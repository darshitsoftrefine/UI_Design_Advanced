import 'package:flutter/material.dart';
import 'package:tradly/string_constants.dart';
import '../cart/cart_add_address.dart';
import '../home_screens/wishlist_screen.dart';
import '../themes/themes.dart';
import 'add_product_store.dart';

class StoreProduct extends StatelessWidget {
  const StoreProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
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
          const SizedBox(width: 10,),
        ],
      ),
      body: Column(
        children: [
              Container(
                padding: const EdgeInsets.only(top: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: CustomColors.primaryColor,
                        child: const Text('T', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),
                    ),
          const SizedBox(height: 16,),
          const Text(ConstantStrings.tradlyStoreText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          const SizedBox(height: 14,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ElevatedButton(onPressed: (){

                },   style: ElevatedButton.styleFrom(
                  minimumSize: const Size(106, 23),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    side: BorderSide(
                      color: CustomColors.primaryColor
                    )
                  ),
                ),
                  child: const Text(
                    ConstantStrings.editStoreText,
                    style: TextStyle(fontSize: 12, color: Color(0xFF3A8877)),
                  ),),

                  const SizedBox(width: 17,),

                ElevatedButton(onPressed: (){

                },   style: ElevatedButton.styleFrom(
                  minimumSize: const Size(111, 23),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                  child: const Text(
                    ConstantStrings.viewStoreText,
                    style: TextStyle(fontSize: 12, color:Colors.white),
                  ),),
            ],
          ),
          SizedBox(height: 36, child: Divider(color: Colors.grey.shade300, thickness: 1,),),
          const Text("Remove Store", style: TextStyle(color: Colors.grey),),
          const SizedBox(height: 8,),
          ]
                ),
              ),
          SizedBox(height: 20, child: Container( decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300, //set the shadow color
                  blurRadius: 45.0, //set the blur radius
                  offset: const Offset(0, 1), //set the offset to be on top of the button
                )
              ]
          ),),),
          const SizedBox(height: 40,),
          Column(
            children: [
              const Text("You don't have product", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              const SizedBox(height: 37,),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddProductStore()),
                );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(219, 48),
                backgroundColor: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(
                        width: 1,
                        color: CustomColors.primaryColor
                    )
                ),
              ),
                child: const Text(
                  "Add Product",
                  style: TextStyle(fontSize: 18, color: Color(0xFF3A8877), fontWeight: FontWeight.w600),
                ),),
            ],
          )

        ],
      ),
    );
  }
}
