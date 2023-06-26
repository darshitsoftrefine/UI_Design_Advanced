import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class BeveragesProduct extends StatelessWidget {
  const BeveragesProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CustomColors.primaryColor,
          toolbarHeight: 90,
          centerTitle: true,
          title: const Text("Beverages", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
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
                    side: const BorderSide(width: 1, color: Colors.white,),
                  ),
                ),
                  icon: const Icon(Icons.sort), label: const Text("Sort By", style: TextStyle(color: Colors.white, fontSize: 12),),
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
                    side: const BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: const Icon(Icons.location_on), label: const Text("Location", style: TextStyle(color: Colors.white, fontSize: 12),),
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
                    side: const BorderSide(width: 1, color: Colors.white),
                  ),
                ),
                  icon: const Icon(Icons.category), label: const Text("Category", style: TextStyle(color: Colors.white, fontSize: 12),),
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
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      width: 160,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/strawberry.png'),
                        const SizedBox(height: 5,),
                        const Text("Strawberry Punch"),
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
                            const Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
                            const SizedBox(width: 5,),
                            Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
                          ],
                        )
                      ],
                    ),
            ),
                    const SizedBox(width: 9,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      width: 160,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/lemonade.png'),
                          const SizedBox(height: 5,),
                          const Text("Lemonade"),
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
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      width: 160,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/chocolate.png'),
                          const SizedBox(height: 5,),
                          const Text("Chocolate"),
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
                              const Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
                              const SizedBox(width: 5,),
                              Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 9,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      width: 160,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/whisky.png'),
                          const SizedBox(height: 5,),
                          const Text("Whisky"),
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
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      width: 160,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/choco_bakery.png'),
                          const SizedBox(height: 5,),
                          const Text("Chocolate Bakery"),
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
                              const Text('\$35', style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
                              const SizedBox(width: 5,),
                              Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 9,),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300)
                      ),
                      width: 160,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/fruit_punch.png'),
                          const SizedBox(height: 5,),
                          const Text("Fruit Punch"),
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
              )
    ]
          ),
        ),
      ),


    );
  }
}
