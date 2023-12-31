import 'package:flutter/material.dart';

class CreateStoreConstant extends StatelessWidget {
  const CreateStoreConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),

            const Text("StoreName", style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 6,),
            const Text("Tradly Store", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),),
             SizedBox(height: 30, child: Divider(thickness: 1, color: Colors.grey.shade300,),),
            const Text("Store Web Address", style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 6,),
            const Text("tradly.app", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
            SizedBox(height: 30, child: Divider(thickness: 1, color: Colors.grey.shade300,),),
            const Text("Store Description", style: TextStyle(color: Colors.grey),),
            const SizedBox(height:6,),
            const Text("Sell Groceries and Homecare Product", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
            SizedBox(height: 30, child: Divider(thickness: 1, color: Colors.grey.shade300,),),
            const Text("Store type", style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 6,),
            const Text("Groceries Store", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
            SizedBox(height: 30, child: Divider(thickness: 1, color: Colors.grey.shade300,),),
            const Text("Address", style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 6,),
            const Text("125 Crescent Ave, Woodbury", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
            SizedBox(height: 30, child: Divider(thickness: 1, color: Colors.grey.shade300,),),
            const Text("Country", style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 6,),
            const Text("USA", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
            SizedBox(height: 30, child: Divider(thickness: 1, color: Colors.grey.shade300,),),
            const Text("Courier Name", style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 6,),
            const Text("Blue Dart", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
            SizedBox(height: 30, child: Divider(thickness: 1, color: Colors.grey.shade300,),),
            const Text("Tagline", style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 6,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(128, 23),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                )
              ),
              onPressed: null, child: Row(
              children: const [
                Text("Groceries"),
                SizedBox(width: 5,),
                Icon(Icons.close)
              ],
            ),
            ),
          ]
      ),
    );
  }
}
