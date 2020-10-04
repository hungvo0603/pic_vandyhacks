import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vandyhack/pages/authentication/content_page.dart';

class SharingPage extends StatefulWidget {
  const SharingPage({Key key, @required this.User}) : super(key: key);
  final UserCredential User;

  @override
  _SharingPageState createState() => _SharingPageState();
}

class _SharingPageState extends State<SharingPage> {
  var rng = new Random();
  final firestoreInstance = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ContentPage()));
        },
        child: Icon(Icons.arrow_right_alt),
        backgroundColor: Colors.teal[900],
      ),
      appBar: AppBar(
        title: Text('Welcome ${widget.User.user.email}'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.teal[200],
          Colors.teal[600],
          Colors.teal[200]
        ])),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.text_fields),
                    hintText: "Share your story here",
                    labelText: "Input here: "),
                onSaved: (String value) {
                  firestoreInstance
                      .collection("users")
                      .add({"id": rng, "content": value});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
