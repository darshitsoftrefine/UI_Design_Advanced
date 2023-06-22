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
        title: Text("My Cart", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddNewAddress()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddNewAddress()),
                        );
                      }, icon: Icon(Icons.add)),
                      // SizedBox(width: 10,),
                      Text("Add New Address")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/Rectangle 292.png'),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Coca Cola", style: TextStyle(),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 25),),
                              SizedBox(width: 10,),
                              Text("\$50", style: TextStyle(decoration: TextDecoration.lineThrough),),
                              Text(" 50% off")
                            ],
                          ),
    Row(
          children: [
            Text("Qty: "),

            DropdownButton<int>(
              value: 1, //selected
              icon: Icon(Icons.arrow_drop_down),
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
              Divider(
                height: 20,
                thickness: 0.5,
                indent: 20,
                endIndent: 20,
                color: Colors.grey,
              ),
              Text("Remove", style: TextStyle(color: Colors.grey),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 76,),
                  Text("Price Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 0,),
                  Row(
                    children: [
                      Text("Price (1 item) "),
                      SizedBox(width: 194,),
                      Text("\$ 25")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Delievery Fee"),
                      SizedBox(width: 194,),
                      Text("Info")
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Text("Total Amount", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(width: 144,),
                      Text("\$ 25", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 190,),
              // Container(
              //   child: ElevatedButton(onPressed: (){},   style: ElevatedButton.styleFrom(
              //     fixedSize: const Size(311, 50),
              //     backgroundColor: CustomColors.onboardColor,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(32)),
              //   ),
              //     child: const Text(
              //       "Coninue to Payment",
              //       style: TextStyle(fontSize: 18, color:Colors.white),
              //     ),),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child:ElevatedButton(onPressed: (){
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
    );
  }
}
