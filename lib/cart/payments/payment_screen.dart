import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:tradly/cart/payments/add_card_screen.dart';
import '../../themes/themes.dart';

enum SingingCharacter { card, net, cash, wallet }

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  SingingCharacter? _character = SingingCharacter.card;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("Payment Option", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(

                children: [
                  DottedBorder(
                    color: Colors.grey, //color of dotted border
                    strokeWidth: 2, //thickness of dots
                    dashPattern: [8, 4], //length and space between dots
                    child: Container(
                      width: 300,
                      height: 200,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.add, size: 80, color: Colors.grey,),
                          Text(
                            "Add Payment Method", style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center, //also center the text
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: CustomColors.primaryColor,
                        radius: 5,
                      ),
                      SizedBox(width: 15,),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 5,
                      ),
                      SizedBox(width: 15,),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 5,
                      ),
                    ],
                  ),
                  ListTile(
                    title: const Text('Debit/Credit Card'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.card,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                        Navigator.push( //navigate to a new route
                          context,
                          MaterialPageRoute(builder: (context) {
                            return AddCardScreen(); //the widget to display for other option
                          }),
                        );
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return CustomColors.primaryColor; //the color when selected
                        }
                        return Colors.grey[400]; //the color when unselected
                      }),
                    ),
                  ),
                  ListTile(
                    title: const Text('Net Banking'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.net,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return CustomColors.primaryColor; //the color when selected
                        }
                        return Colors.grey[400]; //the color when unselected
                      }),
                    ),
                  ),
                  ListTile(
                    title: const Text('Cash on Delievery'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.cash,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return CustomColors.primaryColor; //the color when selected
                        }
                        return Colors.grey[400]; //the color when unselected
                      }),
                    ),
                  ),
                  ListTile(
                    title: const Text('Wallet'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.wallet,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                        if (states.contains(MaterialState.selected)) {
                          return CustomColors.primaryColor; //the color when selected
                        }
                        return Colors.grey[400]; //the color when unselected
                      }),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Deliever to Tradly Team. 75119"),
                            Text("Kualalumpur Malaysia"),
                          ],
                        ),
                        SizedBox(width: 50,),
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        },   style: ElevatedButton.styleFrom(
                          fixedSize: const Size(110, 30),
                          backgroundColor: CustomColors.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32)),
                        ),
                          child: const Text(
                            "Change",
                            style: TextStyle(fontSize: 15, color:Colors.white),
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Price Details", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("Price (1 item) "),
                      SizedBox(width: 225,),
                      Text("\$ 25")
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Delievery Fee"),
                      SizedBox(width: 225,),
                      Text("Info")
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Text("Total Amount", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                      SizedBox(width: 141,),
                      Text("\$ 25", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
    padding: EdgeInsets.all(8.0),
    child:ElevatedButton(onPressed: null,   style: ElevatedButton.styleFrom(
      fixedSize: const Size(190, 40),
      backgroundColor: CustomColors.primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32)),
    ),
      child: const Text(
        "Checkout",
        style: TextStyle(fontSize: 20, color:Colors.white),
      ),),
    ),
      );
  }
}
