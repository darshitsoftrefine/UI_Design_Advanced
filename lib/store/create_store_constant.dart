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
            SizedBox(height: 20,),

            Text("StoreName", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            Text("Tradly Store", style: TextStyle(fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),
            Text("Store Web Address", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            Text("tradly.app", style: TextStyle(fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),
            Text("Store Description", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            Text("Sell Groceries and Homecare Product", style: TextStyle(fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),
            Text("Store type", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            Text("Groceries Store", style: TextStyle(fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),
            Text("Address", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            Text("125 Crescent Ave, Woodbury", style: TextStyle(fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),
            Text("Country", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            Text("USA", style: TextStyle(fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),
            Text("Courier Name", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            Text("Blue Dart", style: TextStyle(fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),
            Text("Tagline", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            ElevatedButton.icon(
              icon: const Icon(Icons.close, size: 18),
              label: Text('Groceries'),
              onPressed: null,
            ),
          ]
      ),
    );
  }
}
