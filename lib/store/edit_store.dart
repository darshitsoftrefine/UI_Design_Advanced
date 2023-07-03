import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:tradly/store/my_store_added_product.dart';
import '../themes/themes.dart';

class EditStore extends StatelessWidget {
  const EditStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text("Edit Product", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 31, left: 21, right: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  DottedBorder(
                    color: Colors.grey.shade300, //color of dotted border
                    strokeWidth: 2, //thickness of dots
                    dashPattern: const [8, 4], //length and space between dots
                    child: Container(
                      width: 140,
                      height: 102,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.add, size: 40, color: Colors.grey,),
                          Text(
                            "Add Photos", style: TextStyle(color: Colors.grey, fontSize: 14),
                            textAlign: TextAlign.center, //also center the text
                          ),
                          Text("1600 x 1200  for hi res", style: TextStyle(color: Colors.grey, fontSize: 10),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset('assets/images/add_products1.png'),
                        const Padding(
                          padding: EdgeInsets.only(right: 50, bottom: 50),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey,
                              child: Icon(Icons.close, color: Colors.white,),),
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),
              const Text("Max. 4 photos per product", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 45,),
              const Text("Product Name", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 12,),
              const Text("Brocolli", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              SizedBox(height: 22, child: Divider(color: Colors.grey.shade300, thickness: 1,),),
              const Text("Category Product", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 10,),
              const Text("Vegetables", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              SizedBox(height: 24,child: Divider(color: Colors.grey.shade300, thickness: 1,),),
              Row(
                children: [
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text("\$        30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  const SizedBox(width: 127,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Offer Price", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text("\$        15", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  Divider(color: Colors.grey.shade300, thickness: 1,)
                ],
              ),
              const SizedBox(height: 22,),
              const Text("Location Details", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 6,),
              Row(
                children: const [
                  Text("Kualalumpur, Malaysia", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                  SizedBox(width: 100,),
                  Icon(Icons.bar_chart, color: Colors.grey,)
                ],
              ),
              Divider(color: Colors.grey.shade300, thickness: 1,),
              const SizedBox(height: 28,),
              const Text("Product Description", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 10,),
              const Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
              const SizedBox(height: 20,),
              const Text("Price Type", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 10,),
              const Text("Fixed", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
              SizedBox(height: 20, child: Divider(color: Colors.grey.shade300, thickness: 1,)
              ),
              const Text("Additional Details"),
              const SizedBox(height: 4,),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(195, 24),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),

                      ),
                    ),
                    onPressed: null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cash on Delievery"),
                        Icon(Icons.close)
                      ],
                    ),
                  ),
                  const SizedBox(width: 3),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(126, 24),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),

                      ),
                    ),
                    onPressed: null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Available"),
                        Icon(Icons.close)
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 12),
          child:Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, //set the shadow color
                    blurRadius: 50.0, //set the blur radius
                    offset: Offset(0, -5), //set the offset to be on top of the button
                  )
                ]
            ),
            child: ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyStoreAddedProduct()),
              );
            },   style: ElevatedButton.styleFrom(
              fixedSize: const Size(310, 40),
              backgroundColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
              child: const Text(
                "Edit Product",
                style: TextStyle(fontSize: 18, color:Colors.white),
              ),),
          ),
        ),
      ),
    );
  }
}
