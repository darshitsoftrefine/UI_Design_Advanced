
import 'package:flutter/material.dart';

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

  Widget grid_cards(String image, String title, double top, double bottom, double left, double right, Function() onTap){
    return Stack(
        children:[
          GestureDetector(
              onTap: onTap,
              child: Image.asset(image, width: 100,)),
          Padding(
            padding: EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
            child: Text(title, style: TextStyle(color: Colors.white, fontSize: 13),),
          ),
        ]
    );
  }

}