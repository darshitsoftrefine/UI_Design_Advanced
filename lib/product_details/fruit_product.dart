import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class FruitProduct extends StatelessWidget {
  const FruitProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        toolbarHeight: 70,
        centerTitle: true,
        title: Text("Fruit", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
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
                        Image.asset('assets/images/avocado.png'),
                        SizedBox(height: 5,),
                        Text("Avocado"),
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
                        Image.asset('assets/images/banana.png'),
                        SizedBox(height: 5,),
                        Text("Banana"),
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
                        Image.asset('assets/images/orange.png'),
                        SizedBox(height: 5,),
                        Text("Orange"),
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
                        Image.asset('assets/images/papaya.png'),
                        SizedBox(height: 5,),
                        Text("Papaya"),
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
                        Image.asset('assets/images/pineapple.png'),
                        SizedBox(height: 5,),
                        Text("Pineapple"),
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
                        Image.asset('assets/images/watermelon.png'),
                        SizedBox(height: 5,),
                        Text("Watermelon"),
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
