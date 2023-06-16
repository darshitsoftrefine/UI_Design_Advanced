import 'package:flutter/material.dart';
import 'package:tradly/Login_and_OTP_screens/login.dart';
import 'package:tradly/themes/themes.dart';

class Onboarding_3 extends StatefulWidget {
  const Onboarding_3({super.key});

  @override
  State<Onboarding_3> createState() => _Onboarding_3State();
}

class _Onboarding_3State extends State<Onboarding_3> {
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
              left: 55,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Image.asset('assets/images/Group 4.png'),
                    SizedBox(height: 50,),
                    Text("Donate, Invest and Support", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20),),
                    Text("infrastructure projects", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20),),
                    SizedBox(height: 100,),

                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: CustomColors.onboardColor,
                          radius: 7,
                        ),
                        SizedBox(width: 8,),
                        CircleAvatar(
                          backgroundColor: CustomColors.onboardColor,
                          radius: 7,
                        ),
                        SizedBox(width: 8,),
                        CircleAvatar(
                          backgroundColor: CustomColors.primaryColor,
                          radius: 7,
                        ),
                      ],
                    ),


                    SizedBox(height: 40,),





                    ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },   style: ElevatedButton.styleFrom(
                      fixedSize: const Size(250, 50),
                      backgroundColor: CustomColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                    ),
                      child: const Text(
                        "Finish",
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
