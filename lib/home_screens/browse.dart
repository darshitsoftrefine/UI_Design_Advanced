import 'package:flutter/material.dart';
import 'package:tradly/home_screens/wishlist_screen.dart';

import '../bottom_bar.dart';
import '../cart/cart_add_address.dart';
import '../product_details/product_detail.dart';
import '../themes/themes.dart';
import 'home_dashboard.dart';

class Browse extends StatefulWidget {
  const Browse({super.key});

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {

  TextEditingController control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: CustomColors.primaryColor,
        toolbarHeight: 160,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          padding: EdgeInsets.only(bottom: 20.0, top: 20.0, left: 15, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25,),
              Row(
                children: [
                  Text("Browse", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(width: 109,),
                  IconButton(
                    icon: Icon(Icons.favorite, color: Colors.white,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WishlistScreen()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.white,),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CartAddAddress()),
                      );
                    },
                  ),
                  SizedBox(height: 20,)
                ],
              ),
              Column(
                children:[
                  SizedBox(height: 20,),
                  Center(
                  child: TextFormField(
                    enabled: true,
                    style: TextStyle(color: Colors.white),
                    controller: control,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Search Product',
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
        ]
              )
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 20,),
                ElevatedButton.icon(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SendOtp()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(110, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: Icon(Icons.sort), label: Text("Sort By", style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
                ElevatedButton.icon(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SendOtp()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(118, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: Icon(Icons.location_on), label: Text("Location", style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
                ElevatedButton.icon(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SendOtp()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(125, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: Icon(Icons.category), label: Text("Category", style: TextStyle(color: Colors.white, fontSize: 12),),
                ),
                SizedBox(height: 20,)
              ]
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 23, right: 23),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 160,
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
                                Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
                                SizedBox(width: 5,),
                                Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 9,),
                      Container(
                        width: 160,
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
                ),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 160,
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
                      SizedBox(width: 9,),
                      Container(
                        width: 160,
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
                ),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 160,
                        height: 190,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/brown.png'),
                            SizedBox(height: 5,),
                            Text("Brown Egg"),
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
                      SizedBox(width: 9,),
                      Container(
                        width: 160,
                        height: 190,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/fruit_punch.png'),
                            SizedBox(height: 5,),
                            Text("Fruit Punch"),
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
                )
              ]
          ),
        ),
      ),
    );
  }
}
