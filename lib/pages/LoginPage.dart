import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Colors.black,
          title: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "COPY BUCKET",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 25,
                      fontFamily: 'logoFont',
                    ),
                  ),
                  Lottie.network(
                    'https://assets4.lottiefiles.com/packages/lf20_zxldh066.json',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.help_outline_rounded,
                        color: Colors.teal,
                      )),
                ],
              ),
            ],
          ),
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Lottie.network(
                'https://assets6.lottiefiles.com/packages/lf20_xlmz9xwm.json',
                height: 230,
                width: 230,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'bodyFont',
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CupertinoTextField(
                    suffix: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {},
                      ),
                    ),
                    placeholder: 'JohnWick@gmail.com',
                    prefix: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(Icons.account_box_outlined),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CupertinoTextField(
                  suffix: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: IconButton(
                        onPressed: () {}, icon: Icon(CupertinoIcons.eye)),
                  ),
                  placeholder: 'Password',
                  prefix: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.key_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Not A Member?",
                    style: TextStyle(color: Colors.white),
                  ),
                  CupertinoButton(
                    child: Text('Register'),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              CupertinoButton.filled(
                  child: Text('Login'),
                  onPressed: () {
                    String copied_text = Clipboard.kTextPlain;
                  }),
            ],
          ),
        ),
      ));
}
