import 'package:flutter/material.dart';
import 'package:tradly/cart/payments/track_order_constant.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../../themes/themes.dart';

class CheckoutSuccessScreen extends StatefulWidget {
  const CheckoutSuccessScreen({super.key});

  @override
  State<CheckoutSuccessScreen> createState() => _CheckoutSuccessScreenState();
}

class _CheckoutSuccessScreenState extends State<CheckoutSuccessScreen> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Text("Order Details", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
        backgroundColor: CustomColors.primaryColor,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.close, size: 40, color: Colors.white,)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
                child: Image.asset('assets/images/Done.png')),
            SizedBox(height: 5,),
            Center(child: Text("Thanks for Order", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/Rectangle 292.png'),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Coca Cola", style: TextStyle(),),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Text("\$25", style: TextStyle(color: CustomColors.primaryColor, fontWeight: FontWeight.bold, fontSize: 25),),
                              SizedBox(width: 10,),
                              Text("\$50", style: TextStyle(decoration: TextDecoration.lineThrough),),
                              Text(" 50% off")
                            ],
                          ),
                          Row(
                            children: [
                              Text("Qty: "),

                              DropdownButton<int>(
                                value: 1, //selected
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                underline: Container(
                                  height: 2,
                                  color: Colors.black,
                                ),
                                onChanged: (int? newValue) {},
                                items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                                    .map<DropdownMenuItem<int>>((int value) {
                                  return DropdownMenuItem<int>(
                                    value: value,
                                    child: Text(value.toString()),
                                  );
                                }).toList(),
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
            SizedBox(height: 10,),
            Text("Track Order", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Order ID - 123455'),
            SizedBox(height: 10,),
            Image.asset('assets/images/Line 2.png'),
            TrackOrderConstant(),


        ],
        ),
      ),
    );
  }
}
