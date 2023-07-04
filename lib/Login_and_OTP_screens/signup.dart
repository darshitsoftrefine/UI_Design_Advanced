import 'package:flutter/material.dart';
import 'package:tradly/Login_and_OTP_screens/send_otp.dart';
import 'package:tradly/themes/themes.dart';

import '../constants/custom_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController passw = TextEditingController();
  TextEditingController repassw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(automaticallyImplyLeading: true,
        backgroundColor: CustomColors.primaryColor,
        elevation: 0.0,
      ),
      backgroundColor: CustomColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Welcome to Tradly", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),),
              const SizedBox(height: 50,),
              const Text("SignUp to your account", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),),
              const SizedBox(height: 20,),
              CustomField(label: 'First Name', control: firstname, obs: false),
              const SizedBox(height: 5,),
              CustomField(label: 'Last Name', control: lastname, obs: true),
              const SizedBox(height: 5,),
              CustomField(label: 'Email ID/Phone Number', control: email, obs: true),
              const SizedBox(height: 5,),
              CustomField(label: 'Password', control: passw, obs: true),
              const SizedBox(height: 5,),
              CustomField(label: 'Re-enter Password', control: repassw, obs: true),
              const SizedBox(height: 40,),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SendOtp()),
                );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 50),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
                child: const Text(
                  "Create",
                  style: TextStyle(fontSize: 20, color:Color(0xFF13B58C)),
                ),),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Have an account ? ", style: TextStyle(color: Colors.white, fontSize: 20),),
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Text("Sign in", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
