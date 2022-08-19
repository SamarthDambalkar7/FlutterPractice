import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var random = "atharva";

  @override
  void initState() {
    random = "Samarth";
  }

  @override
  Widget build(BuildContext buildContext) {
    int a = 10;
    int b = 20;
    int c = a + b;
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Row(
              children: [
                SizedBox(
                  width: 150,
                ),
                Text(random),
                SizedBox(
                  width: 20,
                ),
                Text(c.toString()),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Text("Atharva"),
                  SizedBox(
                    width: 100,
                  ),
                  Text("IS"),
                  SizedBox(
                    width: 100,
                  ),
                  Text("ELITEEEE"),
                ],
              )
            ],
          ),
        ));
  }
}
