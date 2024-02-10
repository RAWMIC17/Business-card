import 'package:flutter/cupertino.dart';
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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              //backgroundColor: Colors.red,
              backgroundImage: AssetImage("lib/images/linkedin_dp1.jpg"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Harsh Kumar Singh",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontFamily: "Pacifico"),
            ),
            Text(
              "App Developer",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.teal[100],
                  //fontWeight: FontWeight.bold,
                  fontFamily: "Source Code Pro",
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                //to add 1 pixel line
                color: Colors.teal.shade100,
              ),
            ),
            Container(
              //color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 22),
              child: Card(
                child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ListTile(
                      leading: Icon(
                        CupertinoIcons.phone_fill,
                        size: 25,
                        color: Colors.teal,
                      ),
                      title: Text(
                        "+91-8210128807",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: "Source Sans 3",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
              ),
            ),
            Container(
              //color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 12, horizontal: 22),
              child: Card(
                child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ListTile(
                      leading: Icon(
                        CupertinoIcons.mail_solid,
                        size: 25,
                        color: Colors.teal,
                      ),
                      title: Text(
                        "hks1710harsh@gmail.com",
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: "Source Sans 3",
                          fontSize: 19.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
              ),
            )
          ],
        )

            /*Row(
          //similar to row
          //limits its width to child's width
          //mainAxisSize: MainAxisSize.min,//takes same size as children, no extra space is taken
          verticalDirection:
              VerticalDirection.down, //to get children order from up to down
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, //vertical,by default start is selected, also choose center
          crossAxisAlignment: CrossAxisAlignment
              .stretch, //horizontal, start is default, can choose stretch, center
          children: [
            Container(
              height: 100,
              width: 100, //double.infinity
              // margin: EdgeInsets.all(20),//to set margin around the container
              //container without a child, tris to be as big as possible
              //padding: EdgeInsets.all(20),// to st padding for the child of container
              color: Colors.red,
              //with child, it assigns itself size of child
            ),
            // SizedBox(width: 20 ,),//provide width in case of row
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100, //double.infinity
                  color: Colors.yellow,
                  //child: "Container 2".text.make(),
                ),
                Container(
                  height: 100,
                  width: 100, //double.infinity
                  color: Colors.green,
                  //child: "Container 2".text.make(),
                ),
              ],
            ),
            Container(
              height: 100,
              width: 100, //double.infinity
              color: Colors.blue,
              //child: "Container 3".text.make(),
            ),
            //Container(width: double.infinity,)//alternate to stretch column width
          ],
        )*/
            ),
      ),
    );
  }
}
