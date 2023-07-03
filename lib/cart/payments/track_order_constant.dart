import 'package:flutter/material.dart';
import 'package:tradly/themes/themes.dart';

class TrackOrderConstant extends StatefulWidget {
  const TrackOrderConstant({Key? key}) : super(key: key);

  @override
  State<TrackOrderConstant> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TrackOrderConstant> {

  @override
  Widget build(BuildContext context) {

    int _currentStep = 0;
    return Theme(
      
      data: ThemeData(
        colorScheme:  Theme.of(context).colorScheme.copyWith(
          primary: CustomColors.primaryColor, // for light mode
          secondary: Colors.grey.shade300 // for dark mode
        ),
      ),
      child: Stepper(
        controlsBuilder: (context, details) {
          return SizedBox.shrink(); // or any other empty widget
        },
        currentStep: _currentStep, //the index of the current step

        onStepContinue: () {
        },
        onStepCancel: () {
        },
        steps: <Step>[
          Step(
            state: StepState.complete,
            title: Text("Order Placed"),
            subtitle: Text("Order #123455 from Fashion Point"),//the title of the step
            content: Row(
              children: [
                Spacer(), // this will create an empty space between the title and the content
                Text("05/08/2019 \n 11:10 AM",),
              ],
            ),

            //Text(""), //the content of the step, //the state of the step
            isActive: true, //whether the step is active or not
          ),
          Step(
            title: Text("Payment Confirmed"),
            subtitle: Text("Payment Confirmed Status"),
            content: Row(
              children: [
                Spacer(), // this will create an empty space between the title and the content
                Text("05/08/2019 \n 11:10 AM",),
              ],
            ),
            state: StepState.complete,
            isActive: true,
          ),
          Step(
            title: Text("Processed"),
            subtitle: Text("Processed Status"),
            content:  Row(
              children: [
                Spacer(), // this will create an empty space between the title and the content
                Text("05/08/2019 \n 11:10 AM",),
              ],
            ),
            state: StepState.complete,
            isActive: false,
          ),
          Step(
            title: Text("Delivered"),
            subtitle: Text("Delievered Status"),
            content:  Row(
              children: [
                Spacer(), // this will create an empty space between the title and the content
                Text("05/08/2019 \n 11:10 AM",),
              ],
            ),
            state: StepState.complete,
            isActive: false,
          ),
        ],
      ),
    );
    //SingleChildScrollView(
    //   scrollDirection: Axis.vertical,
    //   child: ListView(
    //     shrinkWrap: true,
    //     children: [
    //       TimelineTile(
    //         alignment: TimelineAlign.manual,
    //         lineXY: 0.1,
    //         isFirst: true,
    //         indicatorStyle: IndicatorStyle(
    //           width: 20,
    //           color: Colors.green,
    //           iconStyle: IconStyle(
    //             color: Colors.white,
    //             iconData: Icons.check_circle,
    //           ),
    //         ),
    //         beforeLineStyle: LineStyle(color: Colors.green),
    //         endChild: Padding(
    //           padding: EdgeInsets.all(8),
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             children: [
    //               Text("Order Placed"),
    //               Text('give order'),
    //               Text("jhciks")
    //             ],
    //           ),
    //         ),
    //       ),
    //       TimelineTile(
    //         alignment: TimelineAlign.manual,
    //         lineXY: 0.1,
    //         indicatorStyle: IndicatorStyle(
    //           width: 20,
    //           color: Colors.green,
    //           iconStyle: IconStyle(
    //             color: Colors.white,
    //             iconData: Icons.check_circle,
    //           ),
    //         ),
    //         beforeLineStyle: LineStyle(color: Colors.green),
    //         afterLineStyle: LineStyle(color: Colors.green),
    //         endChild: Padding(
    //           padding: EdgeInsets.all(8),
    //           child: Text("Order Confirmed"),
    //         ),
    //       ),
    //       TimelineTile(
    //         alignment: TimelineAlign.manual,
    //         lineXY: 0.1,
    //         indicatorStyle:
    //         IndicatorStyle(width: 20, color: Colors.blueAccent),
    //         beforeLineStyle:
    //         LineStyle(color: Colors.green),
    //         afterLineStyle:
    //         LineStyle(color:
    //         Colors.blueAccent),
    //         endChild:
    //         Padding(
    //           padding:
    //           EdgeInsets.all(8),
    //           child:
    //           Text("Order Shipped"),
    //         ),
    //       ),
    //       TimelineTile(
    //         alignment:
    //         TimelineAlign.manual,
    //         lineXY:
    //         0.1,
    //         isLast:
    //         true,
    //         indicatorStyle:
    //         IndicatorStyle(width:
    //         20,
    //             color:
    //             Colors.grey),
    //         beforeLineStyle:
    //         LineStyle(color:
    //         Colors.blueAccent),
    //         endChild:
    //         Padding(
    //           padding:
    //           EdgeInsets.all(8),
    //           child:
    //           Text("Order Delivered"),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}