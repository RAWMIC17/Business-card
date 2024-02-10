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
        body: SafeArea(
            //to bring widgets to user visible areas
            child: Row(//similar to row
          //limits its width to child's width
          //mainAxisSize: MainAxisSize.min,//takes same size as children, no extra space is taken
          verticalDirection:
              VerticalDirection.down, //to get children order from up to down
          mainAxisAlignment: MainAxisAlignment
              .start, //vertical,by default start is selected, also choose center
          crossAxisAlignment: CrossAxisAlignment.stretch, //horizontal, start is default, can choose stretch, center
          children: [
            Container(
              height: 100,
              width: 100,//double.infinity
              // margin: EdgeInsets.all(20),//to set margin around the container
              //container without a child, tris to be as big as possible
              //padding: EdgeInsets.all(20),// to st padding for the child of container
              color: Colors.amber,
              child: "Container 1"
                  .text
                  .make(), //with child, it assigns itself size of child
            ),
            SizedBox(width: 20 ,),//provide width in case of row
            Container(
              height: 100,
              width: 100,//double.infinity
              color: Colors.blue,
              child: "Container 2".text.make(),
            ),
            Container(
              height: 100,
              width: 100,//double.infinity
              color: Colors.red,
              child: "Container 3".text.make(),
            ),
            //Container(width: double.infinity,)//alternate to stretch column width
          ],
        )),
      ),
    );
  }
}
