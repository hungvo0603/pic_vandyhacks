import 'package:flutter/material.dart';
import 'package:vandyhack/pages/authentication/login_page.dart';
import 'package:vandyhack/main.dart';

class ill extends StatelessWidget {
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'State of Illinois',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'USA',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                iconSize: 50,
                color: Colors.teal,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
              ),
              Text('Share your stories',
                textAlign: TextAlign.center,)
            ],
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
            ' 300,088 Positive - 8,774 deaths - 5,834,762 tests \n'
            '      (Last updated 10/03/2020 12:00 PM)         \n \n'
            ' + Illinois has seen an unprecedented number of \n'
              'unemployment claims during this challenging time \n'
            ' + On July 15th, Governor Pritzker and the Illinois Department of Public Health announced a new COVID-19 mitigation plan focused on combating a resurgence of cases will maintaining the progress the state has made towards bending the curve over the last four months \n'
                ' + Illinois remains an outlier with lower hospitalization and infection rates and one of the highest rates of testing in the U.S. The resurgence plan recognizes that the state is in its strongest position to combat the virus since the pandemic began  \n'
            ' For more information, check https://coronavirus.illinois.gov/s/',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Vandy Hack',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vandy Hack'),
          backgroundColor: Colors.teal[200],
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
        ),
        body: ListView(
          children: [
            Image.asset(
              'img/ill.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    Text('Before'),
                    Text('After'),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('img/ill_0_0.png'),
                    ),
                    Expanded(
                      child: Image.asset('img/ill_0_1.png'),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('img/ill_1_0.jpg'),
                    ),
                    Expanded(
                      child: Image.asset('img/ill_1_1.jpg'),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('img/ill_2_0.jpg'),
                    ),
                    Expanded(
                      child: Image.asset('img/ill_2_1.jpg'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
