import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

import 'second_onboarding.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: CustomColors.primaryColor,
          ),
          Positioned(
            top: 260,
              left: 50,
              child: Container(
                color: Colors.white,
            child: Column(
              children: [
                Image.asset('assets/images/Group6.png'),
                 SizedBox(height: 40,),
                Text("Empowering Artisans", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20),),
                Text("Farmers and Micro Business", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20),),
                SizedBox(height: 100,),

                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: CustomColors.primaryColor,
                      radius: 7,
                    ),
                    SizedBox(width: 8,),
                    CircleAvatar(
                      backgroundColor: CustomColors.onboardColor,
                      radius: 7,
                    ),
                    SizedBox(width: 8,),
                    CircleAvatar(
                      backgroundColor: CustomColors.onboardColor,
                      radius: 7,
                    ),
                  ],
                ),

                // Adding Three Dots preview

                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding_2()),
                  );
                },   style: ElevatedButton.styleFrom(
                  fixedSize: const Size(250, 50),
                  backgroundColor: CustomColors.primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 20, color:Colors.white),
                  ),),
              ],
            ),
          ))
          // Container(
          //   child: Center(
          //     child: Image.asset('assets/images/Group6.png'),
          //   ),
          // ),
          // Container(
          //   child: Text('Empowering Artisans,', style: TextStyle(color: CustomColors.primaryColor),),
          // )
        ],
      ),
    );
  }
}
