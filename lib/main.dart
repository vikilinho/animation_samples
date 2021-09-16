import 'package:animation_samples/views/fadeIn_text.dart';
import 'package:animation_samples/views/randomContainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Container Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FadeIn(),
    );
  }
}
