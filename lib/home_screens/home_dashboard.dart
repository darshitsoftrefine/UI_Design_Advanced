import 'package:flutter/material.dart';
import 'package:tradly/bottom_bar.dart';
import 'package:tradly/constants/custom_field.dart';
import 'package:tradly/themes/themes.dart';

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {

  TextEditingController control = TextEditingController();

  int _selectedIndex = 0 ;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeDashboard(),

  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primaryColor,
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          padding: EdgeInsets.only(bottom: 20.0, top: 20.0, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25,),
              Row(
                children: [
                  Text("Groceries", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(width: 120,),
                  IconButton(
                    icon: Icon(Icons.favorite, color: Colors.white,),
                    onPressed: () {
// do something
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.white,),
                    onPressed: () {
// do something
                    },
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
              child: Center(
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
              )
            ],
          ),
        ),
      ),
      // appBar: AppBar(
      //   elevation: 0.0,
      //   automaticallyImplyLeading: false,
      //   toolbarHeight: 100,
      //   backgroundColor: CustomColors.primaryColor,
      //   title: Text('Groceries', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
      //   actions: <Widget>[
      //     IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, size: 30, color: Colors.white,)),
      //     const SizedBox(width: 1,),
      //     IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart, size: 30, color: Colors.white,)),
      //
      //   ],
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 15),
            child: Row(
              children: [
                Stack(
                  children: [
                    Image.asset('assets/images/food_home.png', width: 310,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 35, left: 15),
                          child: Text("READY TO DELIVER TO \n YOUR HOME", style: TextStyle(color: Colors.white, fontSize: 15),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 8, right: 25, left: 15),
                          child: ElevatedButton(onPressed: (){

                          },   style: ElevatedButton.styleFrom(
                            fixedSize: const Size(180, 35),
                            backgroundColor: Colors.transparent,
                            side: BorderSide(color: Colors.white, width: 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                            ),
                          ),
                            child: const Text(
                              "START SHOPPING",
                              style: TextStyle(fontSize: 15, color:Colors.white),
                            ),),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset('assets/images/home_side.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Stack(
                 children:[
                  Image.asset('assets/images/Rectangle 28.png', width: 100,),
                   Padding(
                     padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8, bottom: 20),
                     child: Text("Beverages", style: TextStyle(color: Colors.white, fontSize: 13),),
                   ),
                 ]
    ),
                Stack(
                    children:[
                      Image.asset('assets/images/Rectangle 29.png', width: 100,),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8, bottom: 20),
                        child: Text("Bread Bakery", style: TextStyle(color: Colors.white, fontSize: 13),),
                      ),
                    ]
                ),
                Stack(
                    children:[
                      Image.asset('assets/images/Rectangle 30.png', width: 100,),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8, bottom: 20),
                        child: Text("Vegetables", style: TextStyle(color: Colors.white),),
                      ),
                    ]
                ),
                Stack(
                    children:[
                      Image.asset('assets/images/Rectangle 31.png', width: 100,),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8, bottom: 20),
                        child: Text("Fruits", style: TextStyle(color: Colors.white),),
                      ),
                    ]
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Stack(
                    children:[
                      Image.asset('assets/images/Rectangle 32.png', width: 100,),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8, bottom: 20),
                        child: Text("Egg", style: TextStyle(color: Colors.white),),
                      ),
                    ]
                ),
                Stack(
                    children:[
                      Image.asset('assets/images/Rectangle 33.png', width: 100,),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8, bottom: 20),
                        child: Text("Frozen Veg", style: TextStyle(color: Colors.white),),
                      ),
                    ]
                ),
                Stack(
                    children:[
                      Image.asset('assets/images/Rectangle 34.png', width: 100,),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8, bottom: 20),
                        child: Text("Homecare", style: TextStyle(color: Colors.white),),
                      ),
                    ]
                ),
                Stack(
                    children:[
                      Image.asset('assets/images/Rectangle 35.png', width: 100,),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 8, right: 8, bottom: 20),
                        child: Text("Pet Care", style: TextStyle(color: Colors.white),),
                      ),
                    ]
                ),

              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBar()
    );
  }
}
