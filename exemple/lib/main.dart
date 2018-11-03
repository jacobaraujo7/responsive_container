import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Responsive Container"),),
        body: Center(

          child: ResponsiveContainer(
            heightPercent: 50.0, //value percent of screen total height
            widthPercent: 50.0,  //value percent of screen total width

            child: Container(color: Colors.red,), //anything widget
          )
        ),
      )
    );
  }
}



