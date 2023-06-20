import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

import '../product_details/product_detail.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("Wishlist", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Padding(
    padding: const EdgeInsets.all(15.0),
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Row(
    children: [
    Container(
    width: 190,
    height: 190,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
     children: [
    GestureDetector(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProductDetail()),
    );
    },
    child: Image.asset('assets/images/apple.png')),
    SizedBox(height: 5,),
    Text("Apple"),
    SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CircleAvatar(
    backgroundColor: CustomColors.primaryColor,
    radius: 13,
    child: Text('T'),
    ),
    Text("  Tradly"),
    SizedBox(width: 10,),
    //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
    SizedBox(width: 5,),
    Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
    ],
    )
    ],
    ),
    ),
    Container(
    width: 190,
    height: 190,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Image.asset('assets/images/orange.png'),
    SizedBox(height: 5,),
    Text("Orange"),
    SizedBox(height: 5,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CircleAvatar(
    backgroundColor: CustomColors.primaryColor,
    radius: 13,
    child: Text('T'),
    ),
    Text("  Tradly"),
    SizedBox(width: 10,),
    //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
    SizedBox(width: 5,),
    Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
    ],
    )
    ],
    ),
    ),

    ],
    ),
    SizedBox(height: 20,),
    Row(
    children: [
    Container(
    width: 190,
    height: 190,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Image.asset('assets/images/moist.png'),
    SizedBox(height: 5,),
    Text("Moisturizer"),
    SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CircleAvatar(
    backgroundColor: CustomColors.primaryColor,
    radius: 13,
    child: Text('T'),
    ),
    Text("  Tradly"),
    SizedBox(width: 10,),
    //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
    SizedBox(width: 5,),
    Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
    ],
    )
    ],
    ),
    ),
    Container(
    width: 190,
    height: 190,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Image.asset('assets/images/broc.png'),
    SizedBox(height: 5,),
    Text("Brocolli"),
    SizedBox(height: 10,),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    CircleAvatar(
    backgroundColor: CustomColors.primaryColor,
    radius: 13,
    child: Text('T'),
    ),
    Text("  Tradly"),
    SizedBox(width: 10,),
    //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
    SizedBox(width: 5,),
    Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
    ],
    )
    ],
    ),
    ),
    ],
    ),
    ]
    )
    )
    )
    );
  }
}
