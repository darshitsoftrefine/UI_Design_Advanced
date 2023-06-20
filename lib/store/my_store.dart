import 'package:flutter/material.dart';

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
        title: Text("My Store", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, size: 30, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart, size: 30, color: Colors.white,)),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 40, right: 40, bottom: 10),
        child: Column(
          children: [
            Center(child: Image.asset('assets/images/undraw_business_shop_qw5t.png')),
            SizedBox(height: 35,),
            Text("You Don't Have a Store", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateStore()),
              );
            },   style: ElevatedButton.styleFrom(
              fixedSize: const Size(250, 50),
              backgroundColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
              child: const Text(
                "Create Store",
                style: TextStyle(fontSize: 20, color:Colors.white),
              ),),
          ],
        ),
      ),
    );
  }
}
