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
        title: Text("My Cart", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Column(
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
          SizedBox(height: 30,),
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
          underline: Container(
            height: 2,
            color: Colors.black,
          ),
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
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Text("Price Details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text("Price (1 item) "),
                    SizedBox(width: 245,),
                    Text("\$ 25")
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("Delievery Fee"),
                    SizedBox(width: 245,),
                    Text("Info")
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Total Amount", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                    SizedBox(width: 154,),
                    Text("\$ 25", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 190,),
          Container(
            decoration: BoxDecoration(
    boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.5), //color of shadow//spread radius
    blurRadius: 7, // blur radius
    offset: Offset(0, -4), // changes position of shadow
    ),
    ],
    ),

            child: ElevatedButton(onPressed: null,   style: ElevatedButton.styleFrom(
              fixedSize: const Size(350, 50),
              backgroundColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
              child: const Text(
                "Coninue to Payment",
                style: TextStyle(fontSize: 20, color:Colors.white),
              ),),
          ),
        ],
      ),
    );
  }
}
