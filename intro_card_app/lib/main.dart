import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
      IntroApp()
  );
}

class IntroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child:
         Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("image/nightowlav.jpg"),
                  ),
                  Text(
                    "Harsh Pal",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail_outline,
                    color: Colors.black
                  ),
                  title: Text(
                    "iamhp2k@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.black
                  ),
                  title: Text(
                    "github.com/hpnightowl",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                      Icons.people,
                      color: Colors.black
                  ),
                  title: Text(
                    "twitter.com/hpnightowl",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                      Icons.people,
                      color: Colors.black
                  ),
                  title: Text(
                    "tg.me/hpnightowl",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                ),
              )
            ],
         ),
        ),
      ),
    );
  }
}
