import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPage extends StatelessWidget {
  /// Show a simple "___ Button Pressed" indicator
  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  /// Normally the signin buttons should be contained in the SignInPage
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
                    padding: EdgeInsets.all(30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Login",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 60)),
                        ]),
                  ),
                  Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                        SignInButtonBuilder(
                          text: 'Get going with Email',
                          icon: Icons.email,
                          onPressed: () {
                            _showButtonPressDialog(context, 'Email');
                          },
                          backgroundColor: Colors.blueGrey[700],
                          width: 220.0,
                        ),
                        Divider(),
                        SignInButton(
                          Buttons.GoogleDark,
                          onPressed: () {
                            _showButtonPressDialog(context, 'Google (dark)');
                          },
                        ),
                        Divider(),
                        SignInButton(
                          Buttons.FacebookNew,
                          onPressed: () {
                            _showButtonPressDialog(context, 'FacebookNew');
                          },
                        ),
                        Divider(),
                      ])),
                ])));
  }
}
