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

  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController repass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true,
        backgroundColor: CustomColors.primaryColor,
        elevation: 0.0,
      ),
      backgroundColor: CustomColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome to Tradly", style: TextStyle(color: Colors.white, fontSize: 20),),
            SizedBox(height: 50,),
            Text("SignUp to your account", style: TextStyle(color: Colors.white),),
            SizedBox(height: 20,),
            CustomField(label: 'First Name', control: fname, obs: false),
            SizedBox(height: 5,),
            CustomField(label: 'Last Name', control: lname, obs: true),
            SizedBox(height: 5,),
            CustomField(label: 'Email ID/Phone Number', control: email, obs: true),
            SizedBox(height: 5,),
            CustomField(label: 'Password', control: pass, obs: true),
            SizedBox(height: 5,),
            CustomField(label: 'Re-enter Password', control: repass, obs: true),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SendOtp()),
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
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have an account?", style: TextStyle(color: Colors.white, fontSize: 20),),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text("Sign in", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
