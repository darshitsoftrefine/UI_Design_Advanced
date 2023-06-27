import 'package:flutter/material.dart';
import 'package:tradly/Login_and_OTP_screens/number_drop.dart';
import 'package:tradly/Login_and_OTP_screens/otp_verification.dart';
import 'package:tradly/constants/custom_field.dart';
import 'package:tradly/themes/themes.dart';

class SendOtp extends StatefulWidget {
  const SendOtp({super.key});

  @override
  State<SendOtp> createState() => _SendOtpState();
}

class _SendOtpState extends State<SendOtp> {

  TextEditingController control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: CustomColors.primaryColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Verify your Phone Number", style: TextStyle(color: CustomColors.secondaryColor, fontSize: 24, fontWeight: FontWeight.w500),),
            const SizedBox(height: 40,),
            Text("We have sent you an SMS with a code to", style: TextStyle(color: CustomColors.secondaryColor, fontSize: 16,),),
            Text("enter number", style: TextStyle(color: CustomColors.secondaryColor, fontSize: 16),),
            const SizedBox(height: 20,),
            //NumberDropdownTextField(),
            TextFormField(
              enabled: true,
              style: const TextStyle(color: Colors.white),
              controller: control,
              obscureText: false,
              decoration: InputDecoration(
                labelText: '+91 9876543210', labelStyle: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                fillColor: Colors.white,
                focusColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
              borderSide: const BorderSide(
                color: Colors.white,
                width: 1.0,
              ),
            ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                    style: BorderStyle.solid
                  ),
                ),
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(32.0),
                //   borderSide: const BorderSide(
                //     color: Colors.white,
                //     width: 1.0,
                //   ),
                // ),


              ),
            ),
            //CustomField(label: '+91  9876543210', control: control, obs: false),
            const SizedBox(height: 64,),
            Text('Or login with Social Network', style: TextStyle(color: CustomColors.secondaryColor, fontSize: 18, fontWeight: FontWeight.w400),),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OtpVerification()),
              );
            },   style: ElevatedButton.styleFrom(
              fixedSize: const Size(314, 48),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 16, color:Color(0xFF13B58C)),
              ),),
          ],
        ),
      ),
    );
  }
}
