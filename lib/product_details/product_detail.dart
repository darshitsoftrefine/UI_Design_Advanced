import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                    children: [
                      Image.asset('assets/images/Rectangle 54.png'),
                      Positioned(child:
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon: Icon(Icons.arrow_back_rounded, color: Colors.white60,)),
                          SizedBox(width: 200,),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.share, color: Colors.white60,))),
                          SizedBox(width: 4,),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined, color: Colors.white60,))),
                          SizedBox(width: 4,),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.card_travel, color: Colors.white60,))),
                        ],
                      ))
            ]
        ),
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Coca Cola", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 20),),
                            SizedBox(width: 10,),
                            Text('\$50', style: TextStyle(decoration: TextDecoration.lineThrough),),
                            SizedBox(width: 5,),
                            Text('50% Off')
                          ],
                        ),
                        SizedBox(height: 30,)
                      ],
                    )),
        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: CustomColors.primaryColor,
                radius: 15,
                child: Text('T', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
              ),
              Text("  Tradly Store", style: TextStyle(fontSize: 20),),
              SizedBox(width: 100,),
              ElevatedButton(onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SendOtp()),
                // );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(120, 20),
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
                SizedBox(height: 50,),
                Stack(
                  children:[
                    Container(
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC.",),
                  ),
        ]
                ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Condition"),
                      SizedBox(width: 50,),
                      Text("Organic")
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Price Type"),
                      SizedBox(width: 50,),
                      Text("Fixed")
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Category"),
                      SizedBox(width: 50,),
                      Text("Beverages")
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Location"),
                      SizedBox(width: 50,),
                      Text("Kualalumpur, Malaysia")
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Additional Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Delievery Details"),
                      SizedBox(width: 50,),
                      Text("Home Delievery Available, \n Cash on Delievery")
                    ],
                  ),

                ],
              ),
            )
        ]
        ),
          ),
      ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: (){
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => SendOtp()),
          // );
        },   style: ElevatedButton.styleFrom(
          fixedSize: const Size(190, 40),
          backgroundColor: CustomColors.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32)),
        ),
          child: const Text(
            "Add to Cart",
            style: TextStyle(fontSize: 20, color:Colors.white),
          ),),
      ),
    );
  }
}
