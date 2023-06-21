import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:tradly/store/view_store.dart';
import '../themes/themes.dart';
import 'edit_store.dart';

class MyStoreAddedProduct extends StatelessWidget {
  const MyStoreAddedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController control = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Text("My Store", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, size: 30, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart, size: 30, color: Colors.white,)),

        ],
      ),
    body: Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 8, right: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    alignment: Alignment.topCenter,
    child: CircleAvatar(
    radius: 30,
    backgroundColor: CustomColors.primaryColor,
    child: Text('T', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
    ),
    ),
    SizedBox(height: 20,),
    Container(
      alignment: Alignment.center,
        child: Text("Tradly Store", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    ElevatedButton(onPressed: (){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditStore()),
    );
    },   style: ElevatedButton.styleFrom(
    fixedSize: const Size(120, 30),
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(32),
    side: BorderSide(
    color: CustomColors.primaryColor
    )
    ),
    ),
    child: const Text(
    "Edit Store",
    style: TextStyle(fontSize: 15, color: Color(0xFF3A8877)),
    ),),

    SizedBox(width: 25,),

    ElevatedButton(onPressed: (){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewStore()),
    );
    },   style: ElevatedButton.styleFrom(
    fixedSize: const Size(120, 30),
    backgroundColor: CustomColors.primaryColor,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(32)),
    ),
    child: const Text(
    "View Store",
    style: TextStyle(fontSize: 15, color:Colors.white),
    ),),
    ],
    ),
    SizedBox(height: 30,),
    Text("Remove Store", style: TextStyle(color: Colors.grey),),
      SizedBox(height: 40,),
      TextFormField(
        enabled: true,
        style: TextStyle(color: Colors.white),
        controller: control,
        decoration: InputDecoration(
          filled: true,
          hintText: 'Search Product',
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: CustomColors.primaryColor,),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
        ),
      ),
      SizedBox(height: 20,),
      Text("Product", style: TextStyle(fontWeight: FontWeight.bold),),
      SizedBox(height: 20,),
      Row(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/Product.png'),
              Positioned(
                top: 40,
                left: 40,
                right: 80,
                bottom: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 15,
                  child: Icon(Icons.edit, color: Colors.white,),
                ),
              ),
              Positioned(
                top: 40,
                left: 100,
                right: 80,
                bottom: 100,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 15,
                  child: Icon(Icons.delete, color: Colors.white,),
                ),
              )
            ],
          ),
          SizedBox(width: 20,),
          DottedBorder(
            color: Colors.grey, //color of dotted border
            strokeWidth: 2, //thickness of dots
            dashPattern: [8, 4], //length and space between dots
            child: Container(
              width: 160,
              height: 200,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add, size: 70, color: Colors.grey,),
                  Text(
                    "Add Product", style: TextStyle(color: Colors.grey, fontSize: 17),
                    textAlign: TextAlign.center, //also center the text
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    ]
    ),
    )
    );
  }
}
