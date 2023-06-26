import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../bottom_bar.dart';
import '../home_screens/home_dashboard.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: CustomColors.primaryColor,
        elevation: 0.0,
      ),
      backgroundColor: CustomColors.primaryColor,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Phone Verification", style: TextStyle(color: CustomColors.secondaryColor, fontSize: 24, fontWeight: FontWeight.w500),),
              const SizedBox(height: 40,),
              Text("Enter your OTP code here.", style: TextStyle(color: CustomColors.secondaryColor, fontSize: 16, fontWeight: FontWeight.w400),),
              const SizedBox(height: 20,),
              OtpTextField(
                textStyle: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                numberOfFields: 6,
                borderColor: const Color(0xFFFFFFFF),
                showFieldAsBox: false,
                enabledBorderColor: Colors.white,
                focusedBorderColor: Colors.white,
                onCodeChanged: (String code) {
                },
              ),
              const SizedBox(height: 70,),
              Text("Didn't you receive any code?", style: TextStyle(color: CustomColors.secondaryColor, fontSize: 18, fontWeight: FontWeight.w400),),
              const SizedBox(height: 10,),
              Text('Resent new code', style: TextStyle(color: CustomColors.secondaryColor, fontSize: 18, fontWeight: FontWeight.w400),),
              const SizedBox(height: 60,),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomBar()),
                );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(314, 48),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
                child: const Text(
                  "Verify",
                  style: TextStyle(fontSize: 16, color:Color(0xFF13B58C), fontWeight: FontWeight.w500),
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
