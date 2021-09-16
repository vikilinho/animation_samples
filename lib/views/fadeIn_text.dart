import 'package:flutter/material.dart';

class FadeIn extends StatefulWidget {
  @override
  _FadeInState createState() => _FadeInState();
}

class _FadeInState extends State<FadeIn> {
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(children: <Widget>[
          CircleAvatar(
              radius: 100,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  "https://images.daznservices.com/di/library/GOAL/1b/c5/ronaldinho-barcelona_1slsxexo4gn5z1m0cln77mlj3h.jpg?t=100890353&quality=100")),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  opacity = 1.0;
                });
              },
              child: Text("View Details")),
          AnimatedOpacity(
            opacity: opacity,
            duration: Duration(seconds: 2),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                  "Ronaldo de Assis Moreira (born 21 March 1980), commonly known as Ronaldinho Gaúcho\n"),
            ),
          ),
        ]),
      )),
    );
  }
}
