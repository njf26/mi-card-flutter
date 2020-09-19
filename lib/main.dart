import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateless widget allows for hot reload
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        //encase widgets in a safe area widget to keep it away from weird edges
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/natalie.jpg'),
              ),
              Text(
                'Natalie Farnsworth',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'PROFESSIONAL STUDENT',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.purple[50],
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.purple[50],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.purple[800],
                  ),
                  title: Text(
                    '(636) 295 3947',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.purple[800],
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.purple[800],
                  ),
                  title: Text(
                    'farnsworth.natalie@gmail.com',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.purple[800],
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
