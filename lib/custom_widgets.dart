
import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class CustomWidgets{


  //Card in home dashboard
  Widget card_home_dashboard(String image, String title){
    return Stack(
      children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(color: Colors.white, fontSize: 14),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){

              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(151, 28),
                backgroundColor: Colors.transparent,
                side: const BorderSide(color: Colors.white, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
                child: const Text(
                  "START SHOPPING",
                  style: TextStyle(fontSize: 12, color:Colors.white),
                ),),
            ],
          ),
        ),
      ],
    );
  }


  // Grid in Home Dashboard
  Widget grid_cards(String image, String title, double top, double bottom, double left, double right, Function() onTap){
    return Container(
      width: 93,
      height: 93,
      child: Stack(
          children:[
            GestureDetector(
                onTap: onTap,
                child: Image.asset(image, width: 100,)),
            Padding(
              padding: EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
              child: Text(title, style: TextStyle(color: Colors.white, fontSize: 11),),
            ),
          ]
      ),
    );
  }


  Widget store_fol(String image, Color color, String circtext, String title){
    return Container(
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
      ),
      child: Stack(
        children: [
          Image.asset(image),
          Positioned(
            right: 50,
            top: 30,
            bottom: 60,
            left: 50,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 30,
              child: Text(circtext, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
            ),
          ),
          Positioned(
              top: 120,
              left: 20,
              right: 18,

              child: Center(child: Text(title, style: TextStyle(fontWeight: FontWeight.w500),))),
          Positioned(
            top: 140,
            left: 36,
            right: 30,
            child:  ElevatedButton(onPressed: (){

            },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(56, 20),
                backgroundColor: CustomColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: const Text(
                "Follow",
                style: TextStyle(fontSize: 12, color:Colors.white),
              ),),)
        ],
      ),
    );
  }

  // Product Details Widget
  Widget product_list(String image, String title, String cancelPrice){
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300)
      ),
      width: 160,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(image),
          const SizedBox(height: 5,),
           Text(title),
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
               Text(cancelPrice, style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
              const SizedBox(width: 5,),
              Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }


  // Profile Widget
  Widget profile_wid(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Edit Profile", style: TextStyle(fontSize: 14),),
          const SizedBox(height: 22,),
          const Text("Language & Currency", style: TextStyle(fontSize: 14),),
          const SizedBox(height: 22,),
          const Text("Feedback", style: TextStyle(fontSize: 14),),
          const SizedBox(height: 22,),
          const Text("Refer a Friend", style: TextStyle(fontSize: 14),),
          const SizedBox(height: 22,),
          const Text("Terms & Conditions", style: TextStyle(fontSize: 14),),
          const SizedBox(height: 22,),
          Text("Logout", style: TextStyle(color: CustomColors.primaryColor, fontSize: 15),)
        ]
    );
  }


  // Order History Widget
  Widget order_hist(String butText, double wid, double hei){
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/Rectangle 292.png', width: 47, height: 47,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Coca Cola", style: TextStyle(),),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
                ],
              ),
            ],
          ),
          ElevatedButton(onPressed: (){

          },   style: ElevatedButton.styleFrom(
            fixedSize: Size(wid, hei),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
                side: BorderSide(
                  color: CustomColors.primaryColor,
                  width: 1,
                )
            ),
          ),
            child: Text(
              butText,
              style: TextStyle(fontSize: 10, color: Color(0xFF3A8877)),
            ),),
        ]
    );
  }

}