import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class VegetableProduct extends StatelessWidget {
  const VegetableProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        toolbarHeight: 80,
        centerTitle: true,
        title: Text("Vegetables", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
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
                  fixedSize: const Size(120, 30),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: Icon(Icons.location_on), label: Text("Location", style: TextStyle(color: Colors.white, fontSize:12),),
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
                            Image.asset('assets/images/carrot.png'),
                            SizedBox(height: 5,),
                            Text("Carrot"),
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
                            Image.asset('assets/images/cabbage.png'),
                            SizedBox(height: 5,),
                            Text("Cabbage"),
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
                            Image.asset('assets/images/tomato.png'),
                            SizedBox(height: 5,),
                            Text("Tomato"),
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
                            Image.asset('assets/images/garlic.png'),
                            SizedBox(height: 5,),
                            Text("Garlic"),
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
                            Image.asset('assets/images/tomatoes.png'),
                            SizedBox(height: 5,),
                            Text("Tomato"),
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
                            Image.asset('assets/images/corn.png'),
                            SizedBox(height: 5,),
                            Text("Corn"),
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
