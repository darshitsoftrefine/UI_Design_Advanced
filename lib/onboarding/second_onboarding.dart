import 'package:flutter/material.dart';
import 'package:tradly/onboarding/third_onboarding.dart';
import 'package:tradly/themes/themes.dart';

class Onboarding_2 extends StatefulWidget {
  const Onboarding_2({super.key});

  @override
  State<Onboarding_2> createState() => _Onboarding_2State();
}

class _Onboarding_2State extends State<Onboarding_2> {
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
              left: 37,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset('assets/images/Group (1).png'),
                    SizedBox(height: 50,),
                    Text("Connecting NGOs, Social", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20),),
                    Text("Enterprises with Communities", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20),),
                    SizedBox(height: 100,),

                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: CustomColors.onboardColor,
                          radius: 7,
                        ),
                        SizedBox(width: 8,),
                        CircleAvatar(
                          backgroundColor: CustomColors.primaryColor,
                          radius: 7,
                        ),
                        SizedBox(width: 8,),
                        CircleAvatar(
                          backgroundColor: CustomColors.onboardColor,
                          radius: 7,
                        ),
                      ],
                    ),


                    SizedBox(height: 40,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Onboarding_3()),
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
