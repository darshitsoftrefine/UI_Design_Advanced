import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../themes/themes.dart';
import 'checkout_success_screen.dart';

enum SingingCharacter { card, net, cash, wallet }

class NewPaymentScreen extends StatefulWidget {
  const NewPaymentScreen({super.key});

  @override
  State<NewPaymentScreen> createState() => _NewPaymentScreenState();
}

class _NewPaymentScreenState extends State<NewPaymentScreen> {

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
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 8, right: 8, bottom: 8),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 250,
                      height: 150,
                      child: Stack(
                        children: [
                          Center(child: Image.asset('assets/images/visa.png', height: 140,)),
                          Positioned(
                            top: 120,
                            left: 220,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: CustomColors.onboardColor,
                              child: Icon(Icons.arrow_forward, color: Colors.white,),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    DottedBorder(
                      color: Colors.grey, //color of dotted border
                      strokeWidth: 2, //thickness of dots
                      dashPattern: [8, 4], //length and space between dots
                      child: Container(
                        width: 200,
                        height: 133,
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
                  ],
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
              SizedBox(height: 20,),
              ListTile(
                title: const Text('Debit/Credit Card'),
                leading: Radio<SingingCharacter>(
                  value: SingingCharacter.card,
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
              SizedBox(height: 30,),
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
                    SizedBox(width: 15,),
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Price Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Price (1 item) "),
                  SizedBox(width: 210,),
                  Text("\$25")
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Delievery Fee"),
                  SizedBox(width: 210,),
                  Text("Info")
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text("Total Amount", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  SizedBox(width: 160,),
                  Text("\$ 25", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child:ElevatedButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheckoutSuccessScreen()),
          );
        },   style: ElevatedButton.styleFrom(
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
