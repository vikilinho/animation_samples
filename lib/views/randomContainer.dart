import 'dart:math';

import 'package:animation_samples/views/fadeIn_text.dart';
import 'package:flutter/material.dart';

double borderRad() => Random().nextDouble() * 40;
double borderMarg() => Random().nextDouble() * 40;
Color borderColor() => Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));

class RandomContainer extends StatefulWidget {
  @override
  _RandomContainerState createState() => _RandomContainerState();
}

class _RandomContainerState extends State<RandomContainer> {
  late Color color;
  late double rad;
  late double marg;
  @override
  void initState() {
    color = borderColor();
    rad = borderRad();
    marg = borderMarg();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: <Widget>[
          SizedBox(
            height: 120,
            width: 120,
            child: AnimatedContainer(
              margin: EdgeInsets.all(marg),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(rad),
              ),
              duration: Duration(seconds: 3),
            ),
          ),
          ElevatedButton(onPressed: changeValue, child: Text('Change Value')),
        ]),
      )),
    );
  }

  void changeValue() {
    setState(() {
      color = borderColor();
      rad = borderRad();
      marg = borderMarg();
    });
  }
}
