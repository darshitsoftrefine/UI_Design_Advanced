
import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class CustomWidgets{


  //Card in home dashboard
  Widget cardhomedashboard(String image, String title){
    return Row(
      children: [
        Stack(
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
        ),
        SizedBox(width: 10,),
        Stack(
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
        ),
        SizedBox(width: 10,),
        Stack(
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
        ),
      ],
    );
  }


  // Grid in Home Dashboard
  Widget gridcards(String image, String title, double top, double left, double right, double bottom){
    return Container(
      width: 93,
      height: 93,
      child: Stack(
          children:[
          Image.asset(image, width: 100,),
            Padding(
              padding: EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
              child: Text(title, style: TextStyle(color: Colors.white, fontSize: 11),),
            ),
          ]
      ),
    );


  }

  // Product Details Widget
  Widget product_list(String image, String title, String logoText, String price, String cancelPrice){
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
              Text(logoText),
              const SizedBox(width: 10,),
               Text(cancelPrice, style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
              const SizedBox(width: 5,),
              Text(price, style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }


  // Profile Widget
  Widget profilewid(){
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
  Widget orderhist(String image, String title, String butText, double wid, double hei, Color butColor, Color buttextcol, double widspacing){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image, width: 47, height: 47,),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(),),
              const SizedBox(height: 5,),
              Row(
                children: [
                  Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 14),),
                ],
              ),
            ],
          ),
          SizedBox(width: widspacing,),
          ElevatedButton(onPressed: (){

          },   style: ElevatedButton.styleFrom(
            fixedSize: Size(wid, hei),
            backgroundColor: butColor,
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
              style: TextStyle(fontSize: 10, color: buttextcol),
            ),),
        ]
    );
  }

  Widget newProduct(String image, String productName, String logoText, String price){
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5),
      child: Container(
        width: 160,
        height: 190,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(height: 10,),
            Text(productName, style: const TextStyle(fontWeight: FontWeight.w500),),
            const SizedBox(height: 10,),
            Row(
              children: [
                const SizedBox(width: 2,),
                CircleAvatar(
                  backgroundColor: CustomColors.primaryColor,
                  radius: 10,
                  child: const Text('T'),
                ),
                const SizedBox(width: 3,),
                Text(logoText),
                const SizedBox(width: 55,),
                Text(price, style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),),
                //SizedBox(width: 15,)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget storfollow(String image, Color color, String logo, String logoText){
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        width: 160,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
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
                child: Text(logo, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),),
              ),
            ),
            Positioned(
                top: 120,
                left: 20,
                right: 18,

                child: Center(child: Text(logoText, style: const TextStyle(fontWeight: FontWeight.w500),))),
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
      ),
    );
  }

  Widget browsepage(String image, String title){
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
              //Text(cancelPrice, style: TextStyle(decoration: TextDecoration.lineThrough, fontSize: 10),),
              const SizedBox(width: 5,),
              Text('\$25', style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }

}