import 'package:flutter/material.dart';
import 'package:tradly/custom_widgets.dart';
import 'package:tradly/home_screens/wishlist_screen.dart';

import '../cart/cart_add_address.dart';
import '../themes/themes.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          title: const Text("Profile", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
          backgroundColor: CustomColors.primaryColor,
          actions: <Widget>[
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WishlistScreen()),
              );
            }, icon: const Icon(Icons.favorite,  color: Colors.white,)),
            const SizedBox(width: 10,),
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartAddAddress()),
              );
            }, icon: const Icon(Icons.shopping_cart, color: Colors.white,)),
            const SizedBox(width: 15,),
          ],
        ),
        body: Stack(
            children: <Widget>[
        Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
      ),

      Container(
        height: MediaQuery.of(context).size.height / 2.8,
        width: MediaQuery.of(context).size.width,
        color: CustomColors.primaryColor,
      ),
              Positioned(
                  top: 150,
                  left: 40,
                  right: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 335,
                    height: 266,
                    padding: const EdgeInsets.all(20),
                  child: CustomWidgets().profilewid()
    )
              ),
              Container(
                padding: const EdgeInsets.only(left: 40, top: 15),
                height: 110,
                width: 500,
                color: CustomColors.primaryColor,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1)
                          ),
                          child: CircleAvatar(
                            radius: 41,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: CustomColors.primaryColor,
                              child: const Text("T", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),),
                            ),
                          ),
                        ),
                        const Positioned(
                            top: 40,
                            left: 45,
                            child: CircleAvatar(radius: 10, backgroundColor: Colors.white,))
                      ],
                    ),
                    const SizedBox(width: 15,),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 20,),
                          Text("Tradly Team", style: TextStyle(fontSize: 14,color: Colors.white, fontWeight: FontWeight.w700),),
                          SizedBox(height: 5,),
                          Text("+1 9998887776", style: TextStyle(fontSize: 14, color: Colors.white),),
                          SizedBox(height: 5,),
                          Text("info@tradly.com", style: TextStyle(fontSize: 14, color: Colors.white),),
                        ]
                    ),
                  ],
                ),
              )
        ]
        )
    );
  }
}
