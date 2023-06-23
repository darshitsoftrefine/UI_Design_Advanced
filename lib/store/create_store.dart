import 'package:flutter/material.dart';
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
            Center(child: Image.asset('assets/images/undraw_business_shop_qw5t.png')),
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
        bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(onPressed: (){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const StoreProduct()),
    );
    },   style: ElevatedButton.styleFrom(
    fixedSize: const Size(190, 40),
    backgroundColor: CustomColors.primaryColor,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(32)),
    ),
    child: const Text(
    "Create",
    style: TextStyle(fontSize: 18, color:Colors.white, fontWeight: FontWeight.bold),
    ),),
    ),
    );
  }
}
