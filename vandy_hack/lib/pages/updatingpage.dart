import 'package:flutter/material.dart';
import 'package:vandyhack/main.dart';

class Updatepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.teal[800],
          Colors.teal[600],
          Colors.teal[200]
        ])),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 50,
                color: Colors.teal,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(60),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("This State is updating",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 50)),
                    ]),
              ),
            ]),
      ),
    );
  }
}
