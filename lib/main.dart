import 'package:flutter/material.dart';
import 'package:tradly/splash.dart';

void main() {
  runApp(const MyApp(), // Wrap your app
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
      home: const Splash(),
    );
  }
}
