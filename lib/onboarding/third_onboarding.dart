import 'package:flutter/material.dart';
import 'package:tradly/Login_and_OTP_screens/login.dart';
import 'package:tradly/themes/themes.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({super.key});

  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
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
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            color: CustomColors.primaryColor,
          ),
          Positioned(
              top: 85,
              left: 31,
              right: 39,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 50,),
                    Image.asset('assets/images/Group 4.png'),
                    const SizedBox(height: 70,),
                    Text("Donate, Invest and Support", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20),),
                    Text("infrastructure projects", style: TextStyle(color: CustomColors.primaryColor, fontSize: 20),),
                    const SizedBox(height: 60,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: CustomColors.onboardColor,
                          radius: 7,
                        ),
                        const SizedBox(width: 8,),
                        CircleAvatar(
                          backgroundColor: CustomColors.onboardColor,
                          radius: 7,
                        ),
                        const SizedBox(width: 8,),
                        CircleAvatar(
                          backgroundColor: CustomColors.primaryColor,
                          radius: 7,
                        ),
                      ],
                    ),
                    const SizedBox(height: 70,),
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35, bottom: 21),
          child:Container(
            child: ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },   style: ElevatedButton.styleFrom(
              fixedSize: const Size(310, 40),
              backgroundColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
              child: const Text(
                "Finish",
                style: TextStyle(fontSize: 18, color:Colors.white),
              ),),
          ),
        ),
      ),
    );
  }
}
