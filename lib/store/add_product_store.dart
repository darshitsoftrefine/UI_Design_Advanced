import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:tradly/store/my_store_added_product.dart';
import '../themes/themes.dart';

class AddProductStore extends StatelessWidget {
  const AddProductStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text("Add Product", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
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
                    color: Colors.grey, //color of dotted border
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
                  Expanded(child: Stack(
                    children: [
                      Image.asset('assets/images/add_product.png'),
                      const Padding(
                        padding: EdgeInsets.only(right: 15.0, top: 10.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey,
                            child: Icon(Icons.close, color: Colors.white,),),
                        ),
                      )
                    ],
                  )),
                 
                ],
              ),
              const Text("Max. 4 photos per product", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 45,),
              const Text("Product Name", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 12,),
              const Text("Brocolli", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              const SizedBox(height: 22,),
              const Text("Category Product", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 10,),
              const Text("Vegetables", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              const SizedBox(height: 24,),
              Row(
                children: [
                  const SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Price", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text("\$        30", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  const SizedBox(width: 127,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Offer Price", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text("\$        15", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                    ],
                  )

                ],
              ),
              const SizedBox(height: 22,),
              const Text("Location Details", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 6,),
              Row(
                children: const [
                  Text("Kualalumpur, Malaysia", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                  SizedBox(width: 100,),
                  Icon(Icons.bar_chart, color: Colors.grey,)
                ],
              ),
              const SizedBox(height: 28,),
              const Text("Product Description", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 10,),
              const Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),),
              const SizedBox(height: 20,),
              const Text("Price Type", style: TextStyle(color: Colors.grey),),
              const SizedBox(height: 10,),
              const Text("Fixed", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
              const SizedBox(height: 20,),
              const Text("Additional Details"),
              const SizedBox(height: 4,),
              Row(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.close, size: 18),
                    label: const Text('Cash on Delievery', style: TextStyle(fontSize: 12),),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(188, 24),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),

                      ),
                    ),
                    onPressed: null,
                  ),
                  const SizedBox(width: 3),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 24),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),

                      ),
                    ),
                    icon: const Icon(Icons.close, size: 18),
                    label: const Text('Available', style: TextStyle(fontSize: 12),),
                    onPressed: null,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyStoreAddedProduct()),
          );
        },   style: ElevatedButton.styleFrom(
          fixedSize: const Size(190, 40),
          backgroundColor: CustomColors.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32)),
        ),
          child: const Text(
            "Add Product",
            style: TextStyle(fontSize: 20, color:Colors.white),
          ),),
      ),
    );
  }
}
