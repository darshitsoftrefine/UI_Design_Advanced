import 'package:flutter/material.dart';
import 'package:tradly/Login_and_OTP_screens/send_otp.dart';
import 'package:tradly/Login_and_OTP_screens/signup.dart';
import 'package:tradly/themes/themes.dart';

import '../constants/custom_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome to tradly", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),),
            SizedBox(height: 66,),
            Text("Login to your account", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),),
            SizedBox(height: 30,),
            CustomField(label: '  Email/Mobile Number', control: email, obs: false),
            SizedBox(height: 10,),
            CustomField(label: '  Password', control: pass, obs: true),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SendOtp()),
              );
            },   style: ElevatedButton.styleFrom(
              fixedSize: const Size(311, 50),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
            ),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 20, color:Color(0xFF13B58C)),
              ),),
            SizedBox(height: 40,),
            Text("Forgot your password ?", style: TextStyle(color: Colors.white, fontSize: 20),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ", style: TextStyle(color: Colors.white, fontSize: 20),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                    child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
