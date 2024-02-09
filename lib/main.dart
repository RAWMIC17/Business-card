import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(//to bring widgets to user visible areas
          child: Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(20),//to set margin around the container
            //container without a child, tris to be as big as possible
            padding: EdgeInsets.all(20),// to st padding for the child of container
            color: Colors.amber,
            child: "Hello"
                .text
                .make(), //with child, it assigns itself size of child
          ),
        ),
      ),
    );
  }
}
