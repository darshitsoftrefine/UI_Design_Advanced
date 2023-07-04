import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'second_onboarding.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  final _pushButtonTextStyle = GoogleFonts.montserrat(textStyle: TextStyle(color: CustomColors.primaryColor));
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
            height: MediaQuery.of(context).size.height / 2.7,
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
                Image.asset('assets/images/Group6.png', width: 285, height: 243,),
                 const SizedBox(height: 70,),
                Text("Empowering Artisans ", style: GoogleFonts.montserrat(textStyle: TextStyle(color: CustomColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w500))),
                Text("Farmers and Micro Business", style: GoogleFonts.montserrat(textStyle: TextStyle(color: CustomColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w500))),
                //Text("Farmers and Micro Business", style: GoogleFonts.montserrat(textStyle: TextStyle(color: CustomColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w500))),
                const SizedBox(height: 60,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: CustomColors.primaryColor,
                      radius: 7,
                    ),
                    const SizedBox(width: 8,),
                    CircleAvatar(
                      backgroundColor: CustomColors.onboardColor,
                      radius: 7,
                    ),
                    const SizedBox(width: 8,),
                    CircleAvatar(
                      backgroundColor: CustomColors.onboardColor,
                      radius: 7,
                    ),
                  ],
                ),
                const SizedBox(height: 70,),
              ],
            ),
          )),
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
                MaterialPageRoute(builder: (context) => const Onboarding2()),
              );
            },   style: ElevatedButton.styleFrom(
              fixedSize: const Size(310, 40),
              backgroundColor: CustomColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 18, color:Colors.white),
              ),),
          ),
        ),
      ),
    );
  }
}
