import 'package:flutter/material.dart';
import 'package:vandyhack/LoadingPage.dart';
import 'package:vandyhack/main_func.dart';
import 'package:firebase_core/firebase_core.dart';

import 'SomethingWentWrong.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return SomethingWentWrong();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return IntroPage();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return LoadingPage();
      },
    );
  }

}

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vandy Hack Homepage',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}