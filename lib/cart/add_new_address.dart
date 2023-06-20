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
        title: Text("Add a new address", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.my_location_outlined, color: Colors.blue,)),
                  Text("Use current location", style: TextStyle(color: Colors.blue),)
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
                child: AddAddressConstant()),
            SizedBox(height: 120,),
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
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartAddedAddress()),
                );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 50),
                backgroundColor: CustomColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
                child: const Text(
                  "Save",
                  style: TextStyle(fontSize: 20, color:Colors.white),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
