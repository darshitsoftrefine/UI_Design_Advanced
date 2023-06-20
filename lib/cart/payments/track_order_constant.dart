import 'package:flutter/material.dart';
import 'package:order_tracker/order_tracker.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackOrderConstant extends StatefulWidget {
  const TrackOrderConstant({Key? key}) : super(key: key);

  @override
  State<TrackOrderConstant> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TrackOrderConstant> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ListView(
        shrinkWrap: true,
        children: [
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            isFirst: true,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: Colors.green,
              iconStyle: IconStyle(
                color: Colors.white,
                iconData: Icons.check_circle,
              ),
            ),
            beforeLineStyle: LineStyle(color: Colors.green),
            endChild: Padding(
              padding: EdgeInsets.all(8),
              child: Text("Order Placed"),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            indicatorStyle: IndicatorStyle(
              width: 20,
              color: Colors.green,
              iconStyle: IconStyle(
                color: Colors.white,
                iconData: Icons.check_circle,
              ),
            ),
            beforeLineStyle: LineStyle(color: Colors.green),
            afterLineStyle: LineStyle(color: Colors.green),
            endChild: Padding(
              padding: EdgeInsets.all(8),
              child: Text("Order Confirmed"),
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.1,
            indicatorStyle:
            IndicatorStyle(width: 20, color: Colors.blueAccent),
            beforeLineStyle:
            LineStyle(color: Colors.green),
            afterLineStyle:
            LineStyle(color:
            Colors.blueAccent),
            endChild:
            Padding(
              padding:
              EdgeInsets.all(8),
              child:
              Text("Order Shipped"),
            ),
          ),
          TimelineTile(
            alignment:
            TimelineAlign.manual,
            lineXY:
            0.1,
            isLast:
            true,
            indicatorStyle:
            IndicatorStyle(width:
            20,
                color:
                Colors.grey),
            beforeLineStyle:
            LineStyle(color:
            Colors.blueAccent),
            endChild:
            Padding(
              padding:
              EdgeInsets.all(8),
              child:
              Text("Order Delivered"),
            ),
          ),
        ],
      ),
    );
  }
}