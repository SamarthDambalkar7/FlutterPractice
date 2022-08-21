import 'package:first_flutter_app/pages/CopyServicePage.dart';
import 'package:first_flutter_app/pages/CopyServiceTrial.dart';
import 'package:first_flutter_app/pages/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// //normal service use this
//  void main(List<String> args) {
//   runApp(myApp());
// }

//background service use this
Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await initializeService();
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
