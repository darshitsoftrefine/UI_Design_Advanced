import 'package:flutter/material.dart';

import 'Track_Order_List.dart';

final trackOrderList = [
  TrackOrderModal(
      icon: Icons.card_travel,
      title: "Order Placed",
      subtitle: "Order#123455 from Fashion Point",
      time: "11.10 AM",
      date: "05/08/2019",
  ),
  TrackOrderModal(
      icon: Icons.person,
      title: "Payment Confirmed",
      subtitle: "Payment Confirmed Status",
    time: "11.10 AM",
    date: "05/08/2019",),
  TrackOrderModal(
      icon: Icons.payment,
      title: "Processed",
      subtitle: "Processed Status",
    time: "11.10 AM",
    date: "05/08/2019",),
  TrackOrderModal(
      icon: Icons.receipt,
      title: "Delievered",
      subtitle: "Delievered Status",
    time: "11.10 AM",
    date: "05/08/2019",),
];