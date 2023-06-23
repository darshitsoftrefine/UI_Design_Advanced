import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

import '../product_details/product_detail.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text("Wishlist", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Padding(
    padding: const EdgeInsets.only(top: 30, left: 23, right: 23),
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
      children: [
      SizedBox(
      width: 160,
      height: 190,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
       children: [
      GestureDetector(
      onTap: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProductDetail()),
      );
      },
      child: Image.asset('assets/images/apple.png')),
      const SizedBox(height: 5,),
      const Text("Apple"),
      const SizedBox(height: 10,),
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      CircleAvatar(
      backgroundColor: CustomColors.primaryColor,
      radius: 13,
      child: const Text('T'),
      ),
      const Text("  Tradly"),
      const SizedBox(width: 10,),
      //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
      const SizedBox(width: 5,),
      Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
      ],
      )
      ],
      ),
      ),
      const SizedBox(width: 9,),
      SizedBox(
      width: 160,
      height: 190,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Image.asset('assets/images/orange.png'),
      const SizedBox(height: 5,),
      const Text("Orange"),
      const SizedBox(height: 5,),
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      CircleAvatar(
      backgroundColor: CustomColors.primaryColor,
      radius: 13,
      child: const Text('T'),
      ),
      const Text("  Tradly"),
      const SizedBox(width: 10,),
      //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
      const SizedBox(width: 5,),
      Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
      ],
      )
      ],
      ),
      ),

      ],
      ),
    ),
    const SizedBox(height: 10,),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
      children: [
      SizedBox(
      width: 160,
      height: 190,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Image.asset('assets/images/moist.png'),
      const SizedBox(height: 5,),
      const Text("Moisturizer"),
      const SizedBox(height: 10,),
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      CircleAvatar(
      backgroundColor: CustomColors.primaryColor,
      radius: 13,
      child: const Text('T'),
      ),
      const Text("  Tradly"),
      const SizedBox(width: 10,),
      //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
      const SizedBox(width: 5,),
      Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
      ],
      )
      ],
      ),
      ),
      const SizedBox(width: 9,),
      SizedBox(
      width: 160,
      height: 190,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Image.asset('assets/images/broc.png'),
      const SizedBox(height: 5,),
      const Text("Brocolli"),
      const SizedBox(height: 10,),
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      CircleAvatar(
      backgroundColor: CustomColors.primaryColor,
      radius: 13,
      child: const Text('T'),
      ),
      const Text("  Tradly"),
      const SizedBox(width: 10,),
      //Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
      const SizedBox(width: 5,),
      Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
      ],
      )
      ],
      ),
      ),
      ],
      ),
    ),
    ]
    )
    )
    )
    );
  }
}
