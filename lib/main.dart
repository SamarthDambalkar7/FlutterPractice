import 'package:first_flutter_app/pages/CopyServicePage.dart';
import 'package:first_flutter_app/pages/CopyServiceTrial.dart';
import 'package:first_flutter_app/pages/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CopyServiceTrail(),
    );
  }
}
