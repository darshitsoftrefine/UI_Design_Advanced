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
        title: const Text("Payment Option", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        centerTitle: true,
        backgroundColor: CustomColors.primaryColor,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 35, left: 8, right: 8, bottom: 8),
                child: Row(
                  children: [
                    SizedBox(
                      width: 260,
                      height: 160,
                      child: Stack(
                        children: [
                          Center(child: Image.asset('assets/images/visa.png', height: 140,)),
                          const Positioned(
                            top: 128,
                            left: 228,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Color(0xFF2BDBC0),
                              child: Icon(Icons.arrow_forward, color: Colors.white,),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 15,),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(10),
                      color: Colors.grey, //color of dotted border
                      strokeWidth: 2, //thickness of dots
                      dashPattern: const [8, 4], //length and space between dots
                      child: Container(
                        width: 200,
                        height: 133,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
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
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: CustomColors.primaryColor,
                  radius: 5,
                ),
                const SizedBox(width: 15,),
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 5,
                ),
                const SizedBox(width: 15,),
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 5,
                ),
              ],
            ),
            SizedBox(height: 20, child: Divider(color: Colors.grey.shade200, thickness: 10,),),
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
            Divider(color: Colors.grey.shade200, thickness: 1,),
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
            Divider(color: Colors.grey.shade200, thickness: 1,),
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
            Divider(color: Colors.grey.shade200, thickness: 1,),
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
            SizedBox(height: 30, child: Divider(color: Colors.grey.shade200, thickness: 10,),),
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
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  },   style: ElevatedButton.styleFrom(
                    minimumSize: const Size(94, 23),
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
            SizedBox(height: 30, child: Divider(color: Colors.grey.shade200, thickness: 10,),),
            Container(
              padding: const EdgeInsets.only(left: 19, right: 12),
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
      bottomNavigationBar: Container(
    decoration: const BoxDecoration(
    boxShadow: [
    BoxShadow(
      color: Colors.grey, //set the shadow color
      blurRadius: 50.0, //set the blur radius
      offset: Offset(0, -5), //set the offset to be on top of the button
    )
    ]
    ),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 12, bottom: 28),
              child: ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckoutSuccessScreen()),
                );
              },   style: ElevatedButton.styleFrom(
                fixedSize: const Size(190, 40),
                backgroundColor: CustomColors.primaryColor,
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
