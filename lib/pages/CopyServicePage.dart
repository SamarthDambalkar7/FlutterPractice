import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CopyServicePage extends StatefulWidget {
  @override
  _CopyServicePageState createState() => _CopyServicePageState();
}

class _CopyServicePageState extends State<CopyServicePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Clipboard Service"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text('Sample Input'),
                SizedBox(
                  height: 30,
                ),
                CupertinoTextField(
                  placeholder: 'enter text',
                ),
                SizedBox(
                  height: 30,
                ),
                CupertinoTextField(
                  placeholder: 'enter text',
                ),
                SizedBox(
                  height: 30,
                ),

                CupertinoButton.filled(
                    child: Text(Clipboard.kTextPlain),
                    onPressed: () async {
                      ClipboardData cdata =
                          await Clipboard.getData(Clipboard.kTextPlain);
                      // String copiedtext = cdata.text.toString();
                      print(copiedtext);
                    }),
                // Text(Clipboard.kTextPlain),
              ],
            ),
          ),
        ),
      );
}
