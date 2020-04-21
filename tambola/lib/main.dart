import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(
    TambolaApp()
  );
}

class TambolaApp extends StatefulWidget {
  @override
  _TambolaAppState createState() => _TambolaAppState();
}
class _TambolaAppState extends State<TambolaApp> {
  int number = 1;
  void ChangeNumber() {
  setState(() {
    number = Random().nextInt(25)+1 ;
  });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Center(
                  child: Text("Tambola")
              ),
            ),
        body: SafeArea(
            child:
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                      onPressed:() {
                        ChangeNumber();
                      },
                      child: Text(
                      "$number",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 200,
                          fontWeight: FontWeight.bold,
                      ),
                  )
                  )
                ],
              ),
            )
        ),
          ),
    );
  }
}
