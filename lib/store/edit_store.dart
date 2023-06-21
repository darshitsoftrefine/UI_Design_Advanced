import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../themes/themes.dart';
import 'my_store.dart';

class EditStore extends StatelessWidget {
  const EditStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("Edit Product", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 15, right: 10, bottom: 5),
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
                    dashPattern: [8, 4], //length and space between dots
                    child: Container(
                      width: 140,
                      height: 105,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add, size: 40, color: Colors.grey,),
                          Text(
                            "Add Photos", style: TextStyle(color: Colors.grey, fontSize: 10),
                            textAlign: TextAlign.center, //also center the text
                          ),
                          Text("1600 x 1200  for hi res", style: TextStyle(color: Colors.grey, fontSize: 10),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Stack(
                    children: [
                      Image.asset('assets/images/add_product.png'),
                      Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.close, color: Colors.white,),),
                      )
                    ],
                  )
                ],
              ),
              Text("Max. 4 photos per product", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 20,),
              Text("Product Name", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 10,),
              Text("Brocolli", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text("Category Product", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 10,),
              Text("Vegetables", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Price", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text("\$        30", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ],
                  ),
                  SizedBox(width: 150,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Offer Price", style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                      Text("\$        15", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                    ],
                  )

                ],
              ),
              SizedBox(height: 20,),
              SizedBox(height: 20,),
              Text("Location Details", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Kualalumpur, Malaysia", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                  SizedBox(width: 150,),
                  Icon(Icons.bar_chart, color: Colors.grey,)
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(height: 20,),
              Text("Product Description", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 10,),
              Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),),
              SizedBox(height: 20,),
              Text("Price Type", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 10,),
              Text("Fixed", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Text("Additional Details"),
              SizedBox(height: 10,),
              Row(
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.close, size: 18),
                    label: Text('Cash on Delievery'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 20),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),

                      ),
                    ),
                    onPressed: null,
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(140, 20),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),

                      ),
                    ),
                    icon: const Icon(Icons.close, size: 18),
                    label: Text('Available'),
                    onPressed: null,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyStore()),
          );
        },   style: ElevatedButton.styleFrom(
          fixedSize: const Size(190, 40),
          backgroundColor: CustomColors.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32)),
        ),
          child: const Text(
            "Edit Product",
            style: TextStyle(fontSize: 20, color:Colors.white),
          ),),
      ),
    );
  }
}
