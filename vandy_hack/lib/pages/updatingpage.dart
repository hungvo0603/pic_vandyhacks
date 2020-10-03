import 'package:flutter/material.dart';

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
              )
            ]),
      ),
    );
  }
}
