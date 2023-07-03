import 'package:flutter/material.dart';
import 'package:tradly/bottom_bar.dart';
import 'package:tradly/cart/payments/track_order_constant.dart';
import 'package:tradly/home_screens/home_dashboard.dart';
import '../../themes/themes.dart';

class CheckoutSuccessScreen extends StatefulWidget {
  const CheckoutSuccessScreen({super.key});

  @override
  State<CheckoutSuccessScreen> createState() => _CheckoutSuccessScreenState();
}

class _CheckoutSuccessScreenState extends State<CheckoutSuccessScreen> {

  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: const Text("Order Details", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BottomBar()),
              );
            }, icon: const Icon(Icons.close, size: 40, color: Colors.white,)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 5),
              alignment: Alignment.center,
                child: Image.asset('assets/images/Done.png')),
            const SizedBox(height: 5,),
            const Center(child: Text("Thanks for Order", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/Rectangle 292.png'),
                      const SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Coca Cola", style: TextStyle(),),
                          const SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 18),),
                              const SizedBox(width: 10,),
                              const Text("\$50", style: TextStyle(decoration: TextDecoration.lineThrough),),
                              const Text(" 50% off")
                            ],
                          ),
                          Row(
                            children: [
                              const Text("Qty: "),

                              DropdownButton(
                                value: selectedValue, // the current value of the dropdown button as an int
                                items: [1, 2, 3].map((value) {
                                  return DropdownMenuItem<int>(
                                    value: value,
                                    child: Text(value.toString()),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!; // this updates the selected value when the dropdown button is pressed
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10, child: Divider(color: Colors.grey.shade200, thickness: 10,),),
            const Text("Track Order", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            const Text('Order ID - 123455'),
            const SizedBox(height: 10,),
            Image.asset('assets/images/Line 2.png'),
            const TrackOrderConstant(),
            Divider(color: Colors.grey.shade200, thickness: 10,),
            //Image.asset('assets/images/Fill 33.png'),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Delievery Address", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 25,),
                  const Text("Tradly Team"),
                  const SizedBox(height: 8,),
                  const Text("Flat Number 512, Eden Garden Rewari", style: TextStyle(fontSize: 12),),
                  const SizedBox(height: 8,),
                  const Text("Mobile: 9876543210"),
                  const SizedBox(height: 30,),
                  Center(child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BottomBar()),
                        );
                      },
                      child: const Text("Back to Home", style: TextStyle(fontWeight: FontWeight.bold),)),),
                  SizedBox(height: 15,),
                ],
              ),
            )

        ],
        ),
      ),
    );
  }
}
