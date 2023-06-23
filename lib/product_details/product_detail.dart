import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                        }, icon: const Icon(Icons.arrow_back_rounded, color: Colors.white,)),
                        const SizedBox(width: 199,),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                            child: IconButton(onPressed: (){}, icon: const Icon(Icons.share, color: Colors.white,))),
                        const SizedBox(width: 4,),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                            child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined, color: Colors.white,))),
                        const SizedBox(width: 4,),
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                            child: IconButton(onPressed: (){}, icon: const Icon(Icons.card_travel, color: Colors.white,))),
                      ],
                    ))
          ]
        ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Coca Cola", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 20),),
                            const SizedBox(width: 10,),
                            const Text('\$50', style: TextStyle(decoration: TextDecoration.lineThrough),),
                            const SizedBox(width: 5,),
                            const Text('50% Off')
                          ],
                        ),
                        const SizedBox(height: 30,)
                      ],
                    )),
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: CustomColors.primaryColor,
                radius: 15,
                child: const Text('T', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
              ),
              const Text("  Tradly Store", style: TextStyle(fontSize: 20),),
              const SizedBox(width: 100,),
              ElevatedButton(onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SendOtp()),
                // );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(86, 23),
                backgroundColor: CustomColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
                child: const Text(
                  "Follow",
                  style: TextStyle(fontSize: 12, color:Colors.white),
                ),),
              ],
            ),
        ),
              const SizedBox(height: 20,),
              Stack(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                    child: const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC.",),
                ),
                  ),
        ]
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Row(
                    children: const [
                      Text("Condition"),
                      SizedBox(width: 50,),
                      Text("Organic")
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: const [
                      Text("Price Type"),
                      SizedBox(width: 50,),
                      Text("Fixed")
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: const [
                      Text("Category"),
                      SizedBox(width: 50,),
                      Text("Beverages")
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    children: const [
                      Text("Location"),
                      SizedBox(width: 50,),
                      Text("Kualalumpur, Malaysia")
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text("Additional Details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  const SizedBox(height: 15,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        Text("Delievery Details"),
                        SizedBox(width: 13,),
                        Text("Home Delievery Available, \n Cash on Delievery")
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ]
        ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
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
