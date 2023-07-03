import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tradly/splash.dart';
import 'package:device_preview/device_preview.dart';

import 'bottom_bar.dart';

void main() {
  runApp(MyApp(), // Wrap your app
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //locale: DevicePreview.of(context).locale,
      debugShowCheckedModeBanner: false,
      title: 'Tradly',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home: const BottomBar(),
    );
  }
}
