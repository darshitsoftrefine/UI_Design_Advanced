import 'package:flutter/material.dart';
import 'package:tradly/store/search_store.dart';

import '../themes/themes.dart';

class ViewStore extends StatelessWidget {
  const ViewStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text("Tradly Store", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          IconButton(onPressed: ()
            => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const SearchStore())),
          icon: const Icon(Icons.search, size: 30, color: Colors.white,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: CustomColors.primaryColor,
                    child: Text("T", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 40),),
                  ),
                  Column(
                    children: [
                      Text("   Tradly Store", style: TextStyle(fontSize: 15),),
                      SizedBox(height: 5,),
                      Text("tradly.app")
                    ],
                  ),
                  SizedBox(width: 110,),
                  ElevatedButton(onPressed: (){

                  },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 20),
                      backgroundColor: CustomColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                    child: const Text(
                      "Follow",
                      style: TextStyle(fontSize: 15, color:Colors.white),
                    ),),
                ],
              ),
              SizedBox(height: 20,),
              Text('Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic'),
              SizedBox(height: 20,),
              Row(
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(129, 24),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                    icon: const Icon(Icons.close, size: 18),
                    label: Text('Groceries'),
                    onPressed: null,
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(140, 20),
                      backgroundColor: CustomColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                    icon: const Icon(Icons.close, size: 18),
                    label: Text('Vegetables'),
                    onPressed: null,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("Total Followers"),
                      Text("0")
                    ],
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: [
                      Text("Total Products"),
                      Text("0")
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SendOtp()),
                        // );
                      },   style: ElevatedButton.styleFrom(
                        fixedSize: const Size(120, 30),
                        backgroundColor: CustomColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: BorderSide(width: 1, color: Colors.white),
                        ),
                      ),
                        child: Text("All Product",),
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SendOtp()),
                        // );
                      },   style: ElevatedButton.styleFrom(
                        fixedSize: const Size(90, 30),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                        child: Text('Fruit', style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SendOtp()),
                        // );
                      },   style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 30),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                        child: Text('Vegetables', style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SendOtp()),
                        // );
                      },   style: ElevatedButton.styleFrom(
                        fixedSize: const Size(90, 30),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                          side: BorderSide(width: 1, color: Colors.black),
                        ),
                      ),
                        child: Text('Home', style: TextStyle(color: Colors.black),),
                      ),
                      SizedBox(height: 20,)
                    ]
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 190,
                    height: 190,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/apple.png'),
                        SizedBox(height: 5,),
                        Text("Apple"),
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
                  Container(
                    width: 190,
                    height: 190,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/broc.png'),
                        SizedBox(height: 5,),
                        Text("Brocolli"),
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
            ],
          ),
        ),
      ),
    );
  }
}
