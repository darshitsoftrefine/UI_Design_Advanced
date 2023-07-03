import 'package:flutter/material.dart';
import 'package:tradly/cart/payments/payment_screen.dart';

import '../themes/themes.dart';
import 'add_new_address.dart';

class CartAddedAddress extends StatefulWidget {
  const CartAddedAddress({super.key});

  @override
  State<CartAddedAddress> createState() => _CartAddedAddressState();
}

class _CartAddedAddressState extends State<CartAddedAddress> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            toolbarHeight: 100,
            title: const Text("My Cart", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
            centerTitle: true,
            backgroundColor: CustomColors.primaryColor,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 19, right: 12, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Deliever to Tradly Team. 75119"),
                            Text("Kualalumpur Malaysia"),
                          ],
                        ),
                        const SizedBox(width: 15,),
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        },   style: ElevatedButton.styleFrom(
                          minimumSize: const Size(94, 23),
                          backgroundColor: CustomColors.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                        ),
                          child: const Text(
                            "Change",
                            style: TextStyle(fontSize: 12, color:Colors.white),
                          ),),
                      ],
                    ),
                  ),
                SizedBox(height: 30),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 10, top: 29),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/Rectangle 292.png'),
                            const SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15,),
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

                                    DropdownButton(
                                      value: selectedValue, // the current value of the dropdown button as an int
                                      items: [1, 2, 3].map((value) {
                                        return DropdownMenuItem<int>(
                                          value: value,
                                          child: Text(value.toString()),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedValue = value!; // this updates the selected value when the dropdown button is pressed
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Divider(
                          height: 20,
                          thickness: 0.5,
                          color: Colors.grey.shade300,
                        ),
                        const Text("Remove", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 10,)
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 28, child: Divider(color: Colors.grey.shade200, thickness: 7,),),
                //Divider(color: Colors.grey.shade200, thickness: 10,),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Price Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20,),
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
      bottomNavigationBar:Container(
        decoration: BoxDecoration(
          boxShadow: [
           BoxShadow(
            color: Colors.grey, //set the shadow color
            blurRadius: 50.0, //set the blur radius
            offset: Offset(0, -5), //set the offset to be on top of the button
            )
            ]
             ),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 12, bottom: 28),
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentScreen()),
                );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(190, 40),
                backgroundColor: CustomColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
                child: const Text(
                  "Coninue to Payment",
                  style: TextStyle(fontSize: 18, color:Colors.white),
                ),),
            ),
          ),
      ),
    );
  }
}
