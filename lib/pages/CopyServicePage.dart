// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
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
  void initState() {
    getClipboardData();
    super.initState();
  }

  //variable declarations.
  List<String> clipboardArray = [];

  void getClipboardData() async {
    ClipboardData? cData = await Clipboard.getData(Clipboard.kTextPlain);
    String? copiedData = cData!.text;
    print(copiedData);

    setState(() {
      clipboardArray.add(copiedData.toString());
    });
  }

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
                    child: Text('click'),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => SimpleDialog(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: ListView.builder(
                                        itemBuilder: (context, index) =>
                                            ListTile(
                                              title: Text(
                                                  '• ' + clipboardArray[index]),
                                            )),
                                  ),
                                ],
                              ));
                      getClipboardData();
                    }),
                SizedBox(
                  height: 30,
                ),
                Container(
                  color: Colors.blueAccent,
                  height: 300,
                  child: Flexible(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: clipboardArray.length,
                          itemBuilder: ((context, index) => ListTile(
                                title: Text('• ' + clipboardArray[index]),
                              )))),
                )
              ],
            ),
          ),
        ),
      );
}
