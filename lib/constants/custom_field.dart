import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key, required this.label, required this.control, required this.obs});
  final String label;
  final TextEditingController control;
  final bool obs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 21, right: 21, bottom: 5),
      child: TextFormField(
        enabled: true,
        style: TextStyle(color: Colors.white),
        controller: control,
        obscureText: obs,
        decoration: InputDecoration(
            labelText: label, labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16),
            fillColor: Colors.white,

            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(25.0),
            //   borderSide: BorderSide(
            //     color: Colors.white,
            //     style: BorderStyle.solid
            //   ),
            // ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),


        ),
      ),
    );
  }
}
