import 'package:flutter/material.dart';

class AddAddressConstant extends StatelessWidget {
  const AddAddressConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 20,),

      Text("Name", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 12,),
      Text("Tradly team", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
      SizedBox(height: 27,),
      Text("Phone", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 12,),
      Text("+621234567890", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
      SizedBox(height: 27,),
      Text("Street Address", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 12,),
      Text("Kualalumpur Malaysia", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
      SizedBox(height: 27,),
      Text("City", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 12,),
      Text("Kualalumpur", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
      SizedBox(height: 27,),
      Text("State", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 12,),
      Text("Malaysia", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
      SizedBox(height: 27,),
      Text("Zipcode", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 12,),
      Text("75119", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
      ]
      ),
    );
  }
}
