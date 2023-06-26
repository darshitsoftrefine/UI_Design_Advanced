import 'package:flutter/material.dart';
import 'package:tradly/home_screens/wishlist_screen.dart';

import '../cart/cart_add_address.dart';
import '../themes/themes.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: const Text("Order History", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WishlistScreen()),
            );
          }, icon: const Icon(Icons.favorite, size: 30, color: Colors.white,)),
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartAddAddress()),
            );
          }, icon: const Icon(Icons.shopping_cart, size: 30, color: Colors.white,)),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10, bottom: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                const Text("Transactions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                const SizedBox(width: 10,),
                Stack(
                  children: [
                    Image.asset('assets/images/Day.png'),
                    Center(child: Text("Januari 2020", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),))
                  ],
                )
              ],
            ),
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Image.asset('assets/images/Rectangle 292.png', width: 47, height: 47,),
    const SizedBox(width: 20,),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const Text("Coca Cola", style: TextStyle(),),
    const SizedBox(height: 5,),
    Row(
    children: [
    Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
    const SizedBox(width: 10,),
    const Text(" 50% off"),
    ],
    ),
          ],
        ),
      const SizedBox(width: 70,),
      ElevatedButton(onPressed: (){
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => MyStore()),
        // );
      },   style: ElevatedButton.styleFrom(
        fixedSize: const Size(96, 25),
        backgroundColor: CustomColors.primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32)),
      ),
        child: const Text(
          "Delievered",
          style: TextStyle(fontSize: 10, color:Colors.white),
        ),),
      ]
      ),
            const SizedBox(height: 30,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/Rectangle 292.png', width: 47, height: 47,),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Coca Cola", style: TextStyle(),),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 87,),
                  ElevatedButton(onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MyStore()),
                    // );
                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(106, 25),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      side: BorderSide(
                        color: CustomColors.primaryColor,
                        width: 1,
                      )
                    ),
                  ),
                    child: const Text(
                      "Order Placed",
                      style: TextStyle(fontSize: 10, color: Color(0xFF3A8877)),
                    ),),
                ]
            ),
            const SizedBox(height: 30,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/Rectangle 292.png', width: 47, height: 47,),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Coca Cola", style: TextStyle(),),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 42,),
                  ElevatedButton(onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MyStore()),
                    // );
                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(155, 23),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                        side: BorderSide(
                          color: CustomColors.primaryColor,
                          width: 1,
                        )
                    ),
                  ),
                    child: const Text(
                      "Payment Confirmed",
                      style: TextStyle(fontSize: 10, color: Color(0xFF3A8877)),
                    ),),
                ]
            ),
            const SizedBox(height: 30,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/Rectangle 292.png', width: 47, height: 47,),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Coca Cola", style: TextStyle(),),
                      const SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 100,),
                  ElevatedButton(onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MyStore()),
                    // );
                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(96, 25),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                        side: BorderSide(
                          color: CustomColors.primaryColor,
                          width: 1,
                        )
                    ),
                  ),
                    child: const Text(
                      "Processed",
                      style: TextStyle(fontSize: 10, color: Color(0xFF3A8877)),
                    ),),
                ]
            ),
      ]
    )
      )
    );
  }
}
