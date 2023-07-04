import 'package:flutter/material.dart';

import '../../themes/themes.dart';

class TrackOrderConstant extends StatelessWidget {
  const TrackOrderConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 29.0),
          child: Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: CustomColors.primaryColor,
                  ),
                  const SizedBox(width: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Order Placed", style: TextStyle(fontSize: 14)),
                      SizedBox(height: 8,),
                      Text("Order#123455 from Fashion Point", style: TextStyle(fontSize: 10, color: Colors.grey))
                    ],
                  ),
                  const SizedBox(width: 70,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text("05/08/2019", style: TextStyle(fontSize: 10, color: Colors.grey)),
                      Text("11:10 AM", style: TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
        SizedBox(
            height: 70,
            child: VerticalDivider(color: CustomColors.primaryColor, thickness: 2, width: 77, indent: 0, endIndent: 0,)),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: CustomColors.onboardColor,
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: CustomColors.primaryColor,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Payment Confirmed", style: TextStyle(fontSize: 14),),
                    SizedBox(height: 8,),
                    Text("Payment Confirmed Status", style: TextStyle(fontSize: 10, color: Colors.grey),)
                  ],
                ),
                const SizedBox(width: 40,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("05/08/2019", style: TextStyle(fontSize: 10, color: Colors.grey)),
                    Text("11:10 AM", style: TextStyle(fontSize: 10, color: Colors.grey)),
                  ],
                )
              ],
            ),

          ],
        ),
        const SizedBox(
            height: 70,
            child: VerticalDivider(color: Colors.grey, thickness: 2, width: 77,)),
        Padding(
          padding: const EdgeInsets.only(left: 29.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(width: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Processed", style: TextStyle(fontSize: 14)),
                      SizedBox(height: 8,),
                      Text("Processed Status", style: TextStyle(fontSize: 10, color: Colors.grey))
                    ],
                  ),
                  const SizedBox(width: 150,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text("05/08/2019", style: TextStyle(fontSize: 10, color: Colors.grey)),
                      Text("11:10 AM", style: TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
        const SizedBox(
            height: 70,
            child: VerticalDivider(color: Colors.grey, thickness: 2, width: 77,)),
        Padding(
          padding: const EdgeInsets.only(left: 29.0),
          child: Column(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(width: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Delievered", style: TextStyle(fontSize: 14)),
                      SizedBox(height: 8,),
                      Text("Delievered Status", style: TextStyle(fontSize: 10, color: Colors.grey))
                    ],
                  ),
                  const SizedBox(width: 150,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text("05/08/2019", style: TextStyle(fontSize: 10, color: Colors.grey)),
                      Text("11:10 AM", style: TextStyle(fontSize: 10, color: Colors.grey)),
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
      ],
    );
  }
}
