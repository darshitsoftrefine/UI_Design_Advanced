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

    return  Row(
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
            lineDotRadius: 0.1,
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
                       style: const TextStyle(fontSize: 10.0),
                     ),
                     Text(trackOrderList[index].date,style: const TextStyle(fontSize: 10),)
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