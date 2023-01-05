import 'package:flutter/material.dart';
import 'package:wm_package/wm_package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: WMPackage(
          title: 'Hello World',
          color1: Colors.lightGreenAccent,
          color2: Colors.lightBlue,
          subtitle: 'This is a new package',
        ),
      ),
    );
  }
}

