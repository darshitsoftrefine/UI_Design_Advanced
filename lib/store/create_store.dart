import 'package:flutter/material.dart';
import 'package:tradly/image_constants.dart';
import 'package:tradly/store/create_store_constant.dart';
import 'package:tradly/store/store_product.dart';

import '../themes/themes.dart';

class CreateStore extends StatelessWidget {
  const CreateStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text("My Store", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 23, left: 20, right: 40, bottom: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                children: [
            Center(child: Image.asset(ImageConstants.storeMainImage)),
      const SizedBox(height: 35,),
                  const Text("This information is used to set up"),
                  const Text('your shop', style: TextStyle(fontSize: 14),),
                  const SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.topLeft,
                      child: Column(
                        children: const [
                          CreateStoreConstant()
                        ],
                      )),
      ]
      ),
          ),
      ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
            boxShadow: [
            BoxShadow(
              color: Colors.grey, //set the shadow color
              blurRadius: 50.0, //set the blur radius
              offset: Offset(0, -5), //set the offset to be on top of the button
            )
            ]
            ),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 12, bottom: 28),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StoreProduct()),
                  );
                },   style: ElevatedButton.styleFrom(
                  minimumSize: const Size(310, 40),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                  child: const Text(
                    "Create",
                    style: TextStyle(fontSize: 18, color:Colors.white),
                  ),),
              ),
            ),
        ),
    );
  }
}
