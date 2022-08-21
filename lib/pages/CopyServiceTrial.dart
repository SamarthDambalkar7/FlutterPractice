import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class CopyServiceTrail extends StatefulWidget {
  @override
  _CopyServiceTrailState createState() => _CopyServiceTrailState();
}

class _CopyServiceTrailState extends State<CopyServiceTrail> {
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
                CupertinoButton.filled(child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                      Icon(Icons.play_arrow),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Start Service'),
                      
                  ],
                )
                , onPressed: (() {
                  
                }),
                )
                // CupertinoButton.filled(
                //     child: Text(Clipboard.kTextPlain),
                //     onPressed: () async {
                //       ClipboardData cdata =
                //           await Clipboard.getData(Clipboard.kTextPlain);
                //       // String copiedtext = cdata.text.toString();
                //       print(copiedtext);
                //     }),
                // Text(Clipboard.kTextPlain),
              ],
            ),
          ),
        ),
      );
}
