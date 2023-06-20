import 'package:flutter/material.dart';

class AddAddressConstant extends StatelessWidget {
  const AddAddressConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),

      Text("Name", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 10,),
      Text("Tradly team", style: TextStyle(fontWeight: FontWeight.w600),),
      SizedBox(height: 30,),
      Text("Phone", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 10,),
      Text("+621234567890", style: TextStyle(fontWeight: FontWeight.w600),),
      SizedBox(height: 30,),
      Text("Street Address", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 10,),
      Text("Kualalumpur Malaysia", style: TextStyle(fontWeight: FontWeight.w600),),
      SizedBox(height: 30,),
      Text("City", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 10,),
      Text("Kualalumpur", style: TextStyle(fontWeight: FontWeight.w600),),
      SizedBox(height: 30,),
      Text("State", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 10,),
      Text("Malaysia", style: TextStyle(fontWeight: FontWeight.w600),),
      SizedBox(height: 30,),
      Text("Zipcode", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 10,),
      Text("75119", style: TextStyle(fontWeight: FontWeight.w600),),
      ]
      ),
    );
  }
}
