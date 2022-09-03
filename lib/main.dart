import 'package:flutter/material.dart';
import 'package:torch/screens/screen_1.dart';
import 'package:torch/screens/screen_2.dart';
import 'package:torch_controller/torch_controller.dart';
void main() {
  TorchController().initialize();
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,

  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen_1(),
    );
  }
}
