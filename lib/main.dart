import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tutorials/togglescreens/togglescreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
              ),
      home:

      ToggleScreen(title: 'Toggle Screen page',),
    );
  }
}
