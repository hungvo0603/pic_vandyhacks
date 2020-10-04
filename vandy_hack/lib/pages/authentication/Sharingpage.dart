import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SharingPage extends StatefulWidget {
  const SharingPage({Key key, @required this.User}) : super(key: key);
  final UserCredential User;

  @override
  _SharingPageState createState() => _SharingPageState();
}

class _SharingPageState extends State<SharingPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${widget.User.user.email}'),
      ),
    );
  }
}
