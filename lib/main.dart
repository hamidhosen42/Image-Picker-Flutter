// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:image_picker_flutter/image_picker.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImagePickers(),
    );
  }
}