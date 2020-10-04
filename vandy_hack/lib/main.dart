import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vandyhack/main_func.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      // ignore: missing_return
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.connectionState == ConnectionState.done) {
          return IntroPage();
        }
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
