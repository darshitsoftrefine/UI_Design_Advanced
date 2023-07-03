import 'package:flutter/material.dart';

import '../../themes/themes.dart';
import 'new_payment_screen.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 70,
        title: const Text("Add Card", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: CustomColors.primaryColor,
                ),
                Center(child: Image.asset('assets/images/mastercard.png'))
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 46, right: 46),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70,),
                  const Text("Card Number", style: TextStyle(color: Colors.grey),),
                  const SizedBox(height: 10,),
                  const Text("5627 2158 9854 8869", style: TextStyle(fontWeight: FontWeight.w600),),
                  SizedBox(height: 30, child: Divider(color: Colors.grey.shade200, thickness: 1,),),
                  const Text("Name", style: TextStyle(color: Colors.grey),),
                  const SizedBox(height: 10,),
                  const Text("Tradly", style: TextStyle(fontWeight: FontWeight.w600),),
                  SizedBox(height: 30,child: Divider(color: Colors.grey.shade200, thickness: 1,),),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Expires Dates", style: TextStyle(color: Colors.grey),),
                          SizedBox(height: 10,),
                          Text("12/08", style: TextStyle(fontWeight: FontWeight.w600),),
                          SizedBox(height: 30, child: Divider(color: Colors.grey.shade200, thickness: 1,),)
                        ],
                      ),
                      const SizedBox(width: 120,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("CVC", style: TextStyle(color: CustomColors.primaryColor),),
                          const SizedBox(height: 10,),
                          const Text("***",),
                          Image.asset('assets/images/Path.png')
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
            decoration: BoxDecoration(
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
            padding: const EdgeInsets.only(left: 32, right: 32, top: 12, bottom: 28),
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewPaymentScreen()),
                );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(190, 40),
                backgroundColor: CustomColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
                child: const Text(
                  "Add Credit Card",
                  style: TextStyle(fontSize: 18, color:Colors.white),
                ),),
            ),
          ),
      ),
    );
  }
}
