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
          const SizedBox(height: 20,),

      const Text("Name", style: TextStyle(color: Colors.grey),),
      const SizedBox(height: 12,),
      const Text("Tradly team", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
      SizedBox(height: 27, child: Divider(color: Colors.grey.shade300, thickness: 1,),),
      const Text("Phone", style: TextStyle(color: Colors.grey),),
      const SizedBox(height: 12,),
      const Text("+621234567890", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
      SizedBox(height: 27,  child: Divider(color: Colors.grey.shade300, thickness: 1,),),
      const Text("Street Address", style: TextStyle(color: Colors.grey),),
      const SizedBox(height: 12,),
      const Text("Kualalumpur Malaysia", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
      SizedBox(height: 27, child: Divider(color: Colors.grey.shade300, thickness: 1,),),
      const Text("City", style: TextStyle(color: Colors.grey),),
      const SizedBox(height: 12,),
      const Text("Kualalumpur", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
      SizedBox(height: 27, child: Divider(color: Colors.grey.shade300, thickness: 1,),),
      const Text("State", style: TextStyle(color: Colors.grey),),
      const SizedBox(height: 12,),
      const Text("Malaysia", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
      SizedBox(height: 27, child: Divider(color: Colors.grey.shade300, thickness: 1,),),
      const Text("Zipcode", style: TextStyle(color: Colors.grey),),
      const SizedBox(height: 12,),
      const Text("75119", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
          SizedBox(height: 27, child: Divider(color: Colors.grey.shade300, thickness: 1,),),
        ]
      ),
    );
  }
}
