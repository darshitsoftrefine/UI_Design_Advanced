import 'package:flutter/material.dart';
import 'package:tradly/home_screens/wishlist_screen.dart';

import '../cart/cart_add_address.dart';
import '../themes/themes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
            }, icon: const Icon(Icons.favorite, size: 30, color: Colors.white,)),
            IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartAddAddress()),
              );
            }, icon: const Icon(Icons.shopping_cart, size: 30, color: Colors.white,)),

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
                    width: 335,
                    height: 266,
                    padding: const EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              const Text("Edit Profile", style: TextStyle(fontSize: 14),),
              const SizedBox(height: 22,),
              const Text("Language & Currency", style: TextStyle(fontSize: 14),),
              const SizedBox(height: 22,),
                    const Text("Feedback", style: TextStyle(fontSize: 14),),
                    const SizedBox(height: 22,),
                    const Text("Refer a Friend", style: TextStyle(fontSize: 14),),
                    const SizedBox(height: 22,),
                    const Text("Terms & Conditions", style: TextStyle(fontSize: 14),),
                    const SizedBox(height: 22,),
                    Text("Logout", style: TextStyle(color: CustomColors.primaryColor, fontSize: 15),)
    ]
    ),
    )
              ),
              Container(
                height: 110,
                width: 500,
                padding: const EdgeInsets.all(10),
                color: CustomColors.primaryColor,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 60,
                            backgroundColor: CustomColors.primaryColor,
                            child: const Text("T", style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white),),
                          ),
                        ),
                        const Positioned(
                            top: 70,
                            left: 97,
                            child: CircleAvatar(radius: 7, backgroundColor: Colors.white,))
                      ],
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Tradly Team", style: TextStyle(fontSize: 15,color: Colors.white),),
                          SizedBox(height: 5,),
                          Text("+1 9998887776", style: TextStyle(fontSize: 15, color: Colors.white),),
                          SizedBox(height: 5,),
                          Text("info@tradly.com", style: TextStyle(fontSize: 15, color: Colors.white),),
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
