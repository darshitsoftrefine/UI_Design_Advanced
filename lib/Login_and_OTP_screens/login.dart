import 'package:flutter/material.dart';
import 'package:tradly/Login_and_OTP_screens/send_otp.dart';
import 'package:tradly/Login_and_OTP_screens/signup.dart';
import 'package:tradly/themes/themes.dart';

import '../constants/custom_field.dart';
import '../string_constants.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Text(ConstantStrings.loginWelcomeHeading, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500),),
            const SizedBox(height: 66,),
            const Text(ConstantStrings.loginSubHeading, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),),
            const SizedBox(height: 30,),
            CustomField(label: ConstantStrings.loginEmailTextField, control: _email, obs: false),
            const SizedBox(height: 10,),
            CustomField(label: ConstantStrings.loginPasswordTextField, control: _password, obs: true),
            const SizedBox(height: 40,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SendOtp()),
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
            const SizedBox(height: 40,),
            const Text(ConstantStrings.loginForgotPassword, style: TextStyle(color: Colors.white, fontSize: 20),),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(ConstantStrings.loginDontHaveAccount, style: TextStyle(color: Colors.white, fontSize: 20),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUp()),
                    );
                  },
                    child: const Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
