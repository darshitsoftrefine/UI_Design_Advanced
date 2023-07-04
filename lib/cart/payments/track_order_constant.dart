import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';
import 'package:im_stepper/stepper.dart';

import '../../models/track_list.dart';

class TrackOrderConstant extends StatefulWidget {
  const TrackOrderConstant({Key? key}) : super(key: key);

  @override
  State<TrackOrderConstant> createState() => TrackOrderConstantState();
}

class TrackOrderConstantState extends State<TrackOrderConstant> {

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 6,
          child: IconStepper(
            direction: Axis.vertical,
            enableNextPreviousButtons: false,
            enableStepTapping: false,
            stepColor: Colors.grey,
            activeStepBorderColor: CustomColors.primaryColor,
            activeStepBorderWidth: 0.0,
            activeStepBorderPadding: 0.0,
            activeStepColor: CustomColors.primaryColor,
            lineColor: Colors.grey,
            lineLength: 70.0,
            lineDotRadius: 0.5,
            stepRadius: 16.0,
            icons: [
              Icon(Icons.check, color: CustomColors.primaryColor),
              Icon(Icons.circle_rounded, color: CustomColors.primaryColor,),
              const Icon(Icons.circle_outlined, color: Colors.grey),
              const Icon(Icons.circle_rounded, color: Colors.grey),
            ],
          ),

        ),
        Expanded(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: trackOrderList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: ListTile(
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 16.0),
                      title: Text(
                        trackOrderList[index].title,
                        style: const TextStyle(fontSize: 14.0),
                      ),
                      subtitle: Text(
                        trackOrderList[index].subtitle,
                        style: const TextStyle(fontSize: 10.0),
                      ),
                    ),
                  ),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     Text(
                       trackOrderList[index].time,
                       style: const TextStyle(fontSize: 10.0, color: Colors.grey),
                     ),
                     Text(trackOrderList[index].date,style: const TextStyle(fontSize: 10, color: Colors.grey),)
                   ],
                 )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
// Padding(
// padding: const EdgeInsets.only(left: 5.0),
// child: Container(
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// CircleAvatar(
// radius: 10,
// backgroundColor: CustomColors.primaryColor,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Order Placed", style: TextStyle(fontSize: 14)),
// SizedBox(height: 8,),
// Text("Prder 123455 from Fashion Point", style: TextStyle(fontSize: 10, color: Colors.grey))
// ],
// ),
// SizedBox(width: 40,),
// Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Text("11:10 AM", style: TextStyle(fontSize: 10, color: Colors.grey)),
// Text("05/08/2019", style: TextStyle(fontSize: 10, color: Colors.grey)),
// ],
// )
// ],
// ),
//
// ],
// ),
// ),
// ),
// SizedBox(
// height: 70,
// child: VerticalDivider(color: CustomColors.primaryColor, thickness: 2, width: 73,)),
// Container(
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Stack(
// children: [
// CircleAvatar(
// radius: 15,
// backgroundColor: CustomColors.onboardColor,
// ),
// Positioned(
// top: 5,
// left: 5,
// child: CircleAvatar(
// radius: 10,
// backgroundColor: CustomColors.primaryColor,
// ),
// )
// ],
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Order Placed", style: TextStyle(fontSize: 14),),
// SizedBox(height: 8,),
// Text("Prder 123455 from Fashion Point", style: TextStyle(fontSize: 10, color: Colors.grey),)
// ],
// ),
// SizedBox(width: 40,),
// Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Text("11:10 AM", style: TextStyle(fontSize: 10, color: Colors.grey)),
// Text("05/08/2019", style: TextStyle(fontSize: 10, color: Colors.grey)),
// ],
// )
// ],
// ),
//
// ],
// ),
// ),
// SizedBox(
// height: 70,
// child: VerticalDivider(color: Colors.grey, thickness: 2, width: 73,)),
// Padding(
// padding: const EdgeInsets.only(left: 5.0),
// child: Container(
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// CircleAvatar(
// radius: 10,
// backgroundColor: Colors.grey,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Order Placed", style: TextStyle(fontSize: 14)),
// SizedBox(height: 8,),
// Text("Prder 123455 from Fashion Point", style: TextStyle(fontSize: 10, color: Colors.grey))
// ],
// ),
// SizedBox(width: 40,),
// Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Text("11:10 AM", style: TextStyle(fontSize: 10, color: Colors.grey)),
// Text("05/08/2019", style: TextStyle(fontSize: 10, color: Colors.grey)),
// ],
// )
// ],
// ),
//
// ],
// ),
// ),
// ),
// SizedBox(
// height: 70,
// child: VerticalDivider(color: Colors.grey, thickness: 2, width: 73,)),
// Padding(
// padding: const EdgeInsets.only(left: 5.0),
// child: Container(
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// CircleAvatar(
// radius: 10,
// backgroundColor: Colors.grey,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Order Placed", style: TextStyle(fontSize: 14)),
// SizedBox(height: 8,),
// Text("Prder 123455 from Fashion Point", style: TextStyle(fontSize: 10, color: Colors.grey))
// ],
// ),
// SizedBox(width: 40,),
// Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Text("11:10 AM", style: TextStyle(fontSize: 10, color: Colors.grey)),
// Text("05/08/2019", style: TextStyle(fontSize: 10, color: Colors.grey)),
// ],
// )
// ],
// ),
//
// ],
// ),
// ),
// ),