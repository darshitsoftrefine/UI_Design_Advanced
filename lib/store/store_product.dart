import 'package:flutter/material.dart';

import '../themes/themes.dart';
import 'add_product_store.dart';

class StoreProduct extends StatelessWidget {
  const StoreProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Text("My Store", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, size: 30, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart, size: 30, color: Colors.white,)),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 8, right: 8),
        child: Column(
          children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: CustomColors.primaryColor,
                    child: Text('T', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ),
            SizedBox(height: 16,),
            Text("Tradly Store", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => StoreProduct()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(106, 23),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    side: BorderSide(
                      color: CustomColors.primaryColor
                    )
                  ),
                ),
                  child: const Text(
                    "Edit Store",
                    style: TextStyle(fontSize: 12, color: Color(0xFF3A8877)),
                  ),),

                  SizedBox(width: 17,),

                ElevatedButton(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => StoreProduct()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(111, 23),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                  child: const Text(
                    "View Store",
                    style: TextStyle(fontSize: 12, color:Colors.white),
                  ),),
              ],
            ),
            SizedBox(height: 36,),
            Text("Remove Store", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 70,),
            Text("You don't have product", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 37,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddProductStore()),
              );
            },   style: ElevatedButton.styleFrom(
              fixedSize: const Size(219, 48),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: BorderSide(
                      color: CustomColors.primaryColor
                  )
              ),
            ),
              child: const Text(
                "Add Product",
                style: TextStyle(fontSize: 18, color: Color(0xFF3A8877)),
              ),),
          ],
        ),
      ),
    );
  }
}
