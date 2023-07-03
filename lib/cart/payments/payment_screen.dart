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
  SingingCharacter? _character = SingingCharacter.net;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text("Payment Option", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 68, right: 61, top: 30),
                  child: DottedBorder(
                    color: Colors.grey.shade300, //color of dotted border
                    strokeWidth: 2, //thickness of dots
                    dashPattern: const [8, 4], //length and space between dots
                    child: Container(
                      width: 246,
                      height: 146,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.add, size: 50, color: Colors.grey,),
                          Text(
                            "Add Payment Method", style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center, //also center the text
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: CustomColors.primaryColor,
                      radius: 5,
                    ),
                    const SizedBox(width: 15,),
                     CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 5,
                    ),
                    const SizedBox(width: 15,),
                     CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 5,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                SizedBox(height: 15, child: Divider(color: Colors.grey.shade300, thickness: 5,),),
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
                          return const AddCardScreen(); //the widget to display for other option
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
                Divider(color: Colors.grey.shade300, thickness: 1,),
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
                Divider(color: Colors.grey.shade300, thickness: 1,),
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
                Divider(color: Colors.grey.shade300, thickness: 1,),
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
                Divider(color: Colors.grey.shade200, thickness: 10,),
                Container(
                  padding: const EdgeInsets.only(left: 19, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Deliever to Tradly Team. 75119"),
                          Text("Kualalumpur Malaysia"),
                        ],
                      ),
                      const SizedBox(width: 15,),
                      ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      },   style: ElevatedButton.styleFrom(
                        fixedSize: const Size(94, 23),
                        backgroundColor: CustomColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)),
                      ),
                        child: const Text(
                          "Change",
                          style: TextStyle(fontSize: 12, color:Colors.white),
                        ),),
                    ],
                  ),
                ),
                SizedBox(height: 20, child: Divider(color: Colors.grey.shade200, thickness: 10,),),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
                      const Text("Price Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Price (1 item) "),
                          Text("\$ 25")
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Delievery Fee"),
                          Text("Info")
                        ],
                      ),
                      SizedBox(height: 30, child: Divider(color: Colors.grey.shade200, thickness: 1,),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Total Amount", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                          Text("\$ 25", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 12),
            child:Container(
              child: ElevatedButton(onPressed: (){},   style: ElevatedButton.styleFrom(
                fixedSize: const Size(190, 40),
                backgroundColor: CustomColors.onboardColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32)),
              ),
                child: const Text(
                  "Checkout",
                  style: TextStyle(fontSize: 18, color:Colors.white),
                ),),
            ),
          ),
        ),
      );
  }
}
