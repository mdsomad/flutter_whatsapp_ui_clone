// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_ui_clone/whatsappui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      // theme: ThemeData(
      //   primaryColor: Color(0xff075e54),
      //   primaryColorLight: Color(0xff08d261)
      // ),

      home: WhatsApp(),

      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.teal),

      darkTheme: ThemeData(brightness: Brightness.dark),
    );
  }
}
