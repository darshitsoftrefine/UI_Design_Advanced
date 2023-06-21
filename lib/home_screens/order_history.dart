import 'package:flutter/material.dart';

import '../themes/themes.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Text("Order History", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, size: 30, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart, size: 30, color: Colors.white,)),

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, bottom: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text("Transactions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                SizedBox(width: 10,),
                Stack(
                  children: [
                    Image.asset('assets/images/Day.png'),
                    Center(child: Text("Januari 2020", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),))
                  ],
                )
              ],
            ),
        SizedBox(height: 50,),
        Row(
    children: [
    Image.asset('assets/images/Rectangle 292.png', width: 47, height: 47,),
    SizedBox(width: 20,),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text("Coca Cola", style: TextStyle(),),
    SizedBox(height: 5,),
    Row(
    children: [
    Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
    SizedBox(width: 10,),
    Text(" 50% off"),
    ],
    ),
          ],
        ),
      SizedBox(width: 80,),
      ElevatedButton(onPressed: (){
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => MyStore()),
        // );
      },   style: ElevatedButton.styleFrom(
        fixedSize: const Size(145, 10),
        backgroundColor: CustomColors.primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32)),
      ),
        child: const Text(
          "Delievered",
          style: TextStyle(fontSize: 15, color:Colors.white),
        ),),
      ]
      ),
            SizedBox(height: 30,),
            Row(
                children: [
                  Image.asset('assets/images/Rectangle 292.png', width: 47, height: 47,),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Coca Cola", style: TextStyle(),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 83,),
                  ElevatedButton(onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MyStore()),
                    // );
                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(165, 10),
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
                      style: TextStyle(fontSize: 15, color: Color(0xFF3A8877)),
                    ),),
                ]
            ),
            SizedBox(height: 30,),
            Row(
                children: [
                  Image.asset('assets/images/Rectangle 292.png', width: 47, height: 47,),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Coca Cola", style: TextStyle(),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 43,),
                  ElevatedButton(onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MyStore()),
                    // );
                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(205, 20),
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
                      style: TextStyle(fontSize: 15, color: Color(0xFF3A8877)),
                    ),),
                ]
            ),
            SizedBox(height: 30,),
            Row(
                children: [
                  Image.asset('assets/images/Rectangle 292.png', width: 47, height: 47,),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Coca Cola", style: TextStyle(),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 83,),
                  ElevatedButton(onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => MyStore()),
                    // );
                  },   style: ElevatedButton.styleFrom(
                    fixedSize: const Size(165, 10),
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
                      style: TextStyle(fontSize: 15, color: Color(0xFF3A8877)),
                    ),),
                ]
            ),
      ]
    )
      )
    );
  }
}
