import 'package:flutter/material.dart';
import 'package:tradly/cart/add_address_constant.dart';

import '../themes/themes.dart';
import 'cart_added_address.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text("Add a new address", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.my_location_outlined, color: Colors.blue,)),
                  const Text("Use current location", style: TextStyle(color: Colors.blue, fontSize: 16),)
                ],
              ),
              const Align(
                alignment: Alignment.topLeft,
                  child: AddAddressConstant()),
              const SizedBox(height: 120,),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), //color of shadow//spread radius
                      blurRadius: 7, // blur radius
                      offset: const Offset(0, -4), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child:ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CartAddedAddress()),
          );
        },   style: ElevatedButton.styleFrom(
          fixedSize: const Size(190, 40),
          backgroundColor: CustomColors.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32)),
        ),
          child: const Text(
            "Save",
            style: TextStyle(fontSize: 18, color:Colors.white),
          ),),
      ),
    );
  }
}
