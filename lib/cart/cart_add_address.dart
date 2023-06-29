import 'package:flutter/material.dart';
import 'package:tradly/cart/add_new_address.dart';

import '../themes/themes.dart';

class CartAddAddress extends StatefulWidget {
  const CartAddAddress({super.key});

  @override
  State<CartAddAddress> createState() => _CartAddAddressState();
}

class _CartAddAddressState extends State<CartAddAddress> {
  String selectedValue = "USA";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text("My Cart", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddNewAddress()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AddNewAddress()),
                      );
                    }, icon: const Icon(Icons.add,size: 10,)),
                    // SizedBox(width: 10,),
                    const Text("Add New Address")
                  ],
                ),
              ),
            ),
            Divider(color: Colors.grey.shade200, thickness: 10,),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/Rectangle 292.png'),
                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Coca Cola", style: TextStyle(),),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 18),),
                              const SizedBox(width: 10,),
                              const Text("\$50", style: TextStyle(decoration: TextDecoration.lineThrough),),
                              const Text(" 50% off")
                            ],
                          ),
    Row(
        children: [
          const Text("Qty: "),

          DropdownButton<int>(
              value: 1, //selected
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,

              onChanged: (int? newValue) {},
              items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                  .map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
          )
        ],
    ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 0.5,
              color: Colors.grey.shade300,
            ),
            const Text("Remove", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 9,),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400.withOpacity(0.5),
                    spreadRadius: 8,
                    blurRadius: 19,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 66,),
                  const Text("Price Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Price (1 item) "),
                      Text("\$ 25")
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Delievery Fee"),
                      Text("Info")
                    ],
                  ),
                  SizedBox(height: 30, child: Divider(color: Colors.grey.shade200, thickness: 1,),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total Amount", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

                      Text("\$ 25", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child:Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, //set the shadow color
                  blurRadius: 50.0, //set the blur radius
                  offset: Offset(0, -5), //set the offset to be on top of the button
                )
              ]
          ),
          child: ElevatedButton(onPressed: (){
          },   style: ElevatedButton.styleFrom(
            fixedSize: const Size(150, 40),
            backgroundColor: CustomColors.onboardColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32)),
          ),
            child: const Text(
              "Coninue to Payment",
              style: TextStyle(fontSize: 18, color:Colors.white),
            ),),
        ),
      ),
    );
  }
}
