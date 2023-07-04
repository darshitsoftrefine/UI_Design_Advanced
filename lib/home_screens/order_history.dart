import 'package:flutter/material.dart';
import 'package:tradly/custom_widgets.dart';
import 'package:tradly/home_screens/wishlist_screen.dart';
import 'package:tradly/models/order_history_list.dart';

import '../cart/cart_add_address.dart';
import '../themes/themes.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  Future<bool> _onWillPop() async {
    return false; //<-- SEE HERE
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
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
            }, icon: const Icon(Icons.favorite,  color: Colors.white,)),
            const SizedBox(width: 10,),
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartAddAddress()),
              );
            }, icon: const Icon(Icons.shopping_cart,  color: Colors.white,)),
            SizedBox(width: 10,),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10, bottom: 10, right: 10),
              child: Row(
                children: [
                  const Text("Transactions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                  const SizedBox(width: 10,),
                  Stack(
                    children: [
                      Image.asset('assets/images/Day.png'),
                      Positioned(
                        top: 5,
                          left: 6,
                          child: Text("Januari 2020", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),))
                    ],
                  )
                ],
              ),
            ),
        const SizedBox(height: 30,),

        // ListView(
        //   itemExtent: 70,
        //   shrinkWrap: true,
        //   children: List.generate(orderHistList.length, (index) {
        //     return CustomWidgets().orderhist(
        //         orderHistList[index].image,
        //         orderHistList[index].productName,
        //         orderHistList[index].butText,
        //         orderHistList[index].wid,
        //         orderHistList[index].hei,
        //         orderHistList[index].butColor,
        //         orderHistList[index].textColor,
        //         orderHistList[index].widspacing
        //     );
        //   }),
        // ),
        Container(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          color: Colors.white,
          child: Row(
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
          minimumSize: const Size(96, 23),
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
        ),
            SizedBox(height: 10, child: Divider(color: Colors.grey.shade200, thickness: 8,),),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              color: Colors.white,
              child: Row(
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

                    },   style: ElevatedButton.styleFrom(
                      minimumSize: const Size(106, 23),
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
            ),
            SizedBox(height: 10,  child: Divider(color: Colors.grey.shade200, thickness: 8,),),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              color: Colors.white,
              child: Row(
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

                    },   style: ElevatedButton.styleFrom(
                      minimumSize: const Size(155, 23),
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
            ),
            SizedBox(height: 10,  child: Divider(color: Colors.grey.shade200, thickness: 8,),),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              color: Colors.white,
              child: Row(
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

                    },   style: ElevatedButton.styleFrom(
                      minimumSize: const Size(96, 23),
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
            ),
        ]
      )
      ),
    );
  }
}
