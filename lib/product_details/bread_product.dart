import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class BreadProduct extends StatelessWidget {
  const BreadProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        toolbarHeight: 70,
        centerTitle: true,
        title: Text("Bread & Bakery", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(onPressed: (){
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
                  icon: Icon(Icons.sort), label: Text("Sort By", style: TextStyle(color: Colors.white),),
                ),
                ElevatedButton.icon(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SendOtp()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(130, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: Icon(Icons.location_on), label: Text("Location", style: TextStyle(color: Colors.white),),
                ),
                ElevatedButton.icon(onPressed: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SendOtp()),
                  // );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(130, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: Icon(Icons.category), label: Text("Category", style: TextStyle(color: Colors.white),),
                ),
              ]
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
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
                        Image.asset('assets/images/bread_chocolate.png'),
                        SizedBox(height: 5,),
                        Text("Bread Chocolate"),
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
                  Container(
                    width: 190,
                    height: 190,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/circle_bakery.png'),
                        SizedBox(height: 5,),
                        Text("Circle Bakery"),
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
                        Image.asset('assets/images/cookies.png'),
                        SizedBox(height: 5,),
                        Text("Cookies"),
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
                  Container(
                    width: 190,
                    height: 190,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/long_bread.png'),
                        SizedBox(height: 5,),
                        Text("Long Bread"),
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
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 190,
                    height: 190,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/donut.png'),
                        SizedBox(height: 5,),
                        Text("Donut"),
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
                  Container(
                    width: 190,
                    height: 190,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/bread.png'),
                        SizedBox(height: 5,),
                        Text("Bread"),
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
              )
            ]
        ),
      ),


    );
  }
}
