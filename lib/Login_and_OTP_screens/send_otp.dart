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
  String? _selectedValue;
  List<String> _items = ["+91", "+90", "+78", "+65", "+34"];

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
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Verify your Phone Number", style: TextStyle(color: CustomColors.secondaryColor, fontSize: 22, fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Text("We have sent you an SMS with a code to enter number", style: TextStyle(color: CustomColors.secondaryColor, fontSize: 17,),),
              SizedBox(height: 20,),
              //NumberDropdownTextField(),
              CustomField(label: '+91  9876543210' , control: control, obs: false),
              SizedBox(height: 100,),
              Text('Or login with Social Network', style: TextStyle(color: CustomColors.secondaryColor, fontSize: 17,),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OtpVerification()),
                );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 50),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color:Color(0xFF13B58C)),
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
