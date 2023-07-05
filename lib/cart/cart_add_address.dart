import 'package:flutter/material.dart';
import 'package:tradly/cart/add_new_address.dart';
import 'package:tradly/image_constants.dart';
import 'package:tradly/string_constants.dart';
import '../themes/themes.dart';

class CartAddAddress extends StatefulWidget {
  const CartAddAddress({super.key});

  @override
  State<CartAddAddress> createState() => _CartAddAddressState();
}

class _CartAddAddressState extends State<CartAddAddress> {
  int _selectedValue = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
            Container(
              color: Colors.white,
              child: GestureDetector(
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
                      }, icon: const Icon(Icons.add,size: 15,)),
                      // SizedBox(width: 10,),
                      const Text("Add New Address")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 7, child:  Divider(color: Colors.grey.shade200, thickness: 7,),),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 10, top: 29),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(ImageConstants.cocacolaOrderHistoryImage),
                        const SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 15,),
                            const Text(ConstantStrings.cocacolaText, style: TextStyle(),),
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
                  value: _selectedValue, // the current value of the dropdown button as an int
                  items: [1, 2, 3].map((value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedValue = value!; // this updates the selected value when the dropdown button is pressed
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
                    const SizedBox(height: 15, )
                  ],
                ),
              ),
            ),

            SizedBox(height: 65, child: Container( decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200, //set the shadow color
                    blurRadius: 35.0, //set the blur radius
                    offset: const Offset(0, 1), //set the offset to be on top of the button
                  )
                ]
            ),),),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16,),
                    const Text(ConstantStrings.priceDetailsText, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(ConstantStrings.priceDetailsSecondText),
                        Text(ConstantStrings.totalPriceText)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(ConstantStrings.priceDetailsFourthText),
                        Text(ConstantStrings.priceDetailsFifthText)
                      ],
                    ),
                    SizedBox(height: 30, child: Divider(color: Colors.grey.shade200, thickness: 1,),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(ConstantStrings.totalDetailsText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

                        Text(ConstantStrings.totalPriceText, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                      ],
                    ),
                    const SizedBox(height: 20,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey, //set the shadow color
                blurRadius: 15.0, //set the blur radius
                offset: Offset(0, -5), //set the offset to be on top of the button
              )
            ]
        ),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 12, bottom: 28),
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
      ),
    );
  }
}
