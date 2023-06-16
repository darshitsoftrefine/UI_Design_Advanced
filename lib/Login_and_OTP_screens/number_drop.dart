import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberDropdownTextField extends StatefulWidget {
  const NumberDropdownTextField({Key? key}) : super(key: key);

  @override
  _NumberDropdownTextFieldState createState() =>
      _NumberDropdownTextFieldState();
}

class _NumberDropdownTextFieldState extends State<NumberDropdownTextField> {
  String? _selectedValue; // The value selected from the dropdown list
  List<String> _items = ["One", "Two", "Three", "Four", "Five"]; // The list of items for the dropdown

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
          value: _selectedValue,
          items: _items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedValue = newValue;
            });
          },
          decoration: InputDecoration(
            labelText: "Select a number",
            border: OutlineInputBorder(),
          ),
          //keyboardType: TextInputType.number, // Make the keyboard number only
        );
  }
}