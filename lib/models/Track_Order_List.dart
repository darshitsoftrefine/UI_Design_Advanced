import 'package:flutter/material.dart';

class TrackOrderModal {
  late IconData icon;
  late String title;
  late String subtitle;
  late String time;
  late String date;

  TrackOrderModal({required this.icon, required this.title, required this.subtitle, required this.time, required this.date});

  TrackOrderModal.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    title = json['title'];
    subtitle = json['subtitle'];
    time = json['time'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['time'] = this.time;
    data['date'] = this.date;
    return data;
  }
}