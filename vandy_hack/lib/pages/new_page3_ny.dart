import 'package:flutter/material.dart';
import 'package:vandyhack/login_page.dart';
import 'package:vandyhack/main.dart';

class Ny extends StatelessWidget {
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
                    'State of New York',
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
        '240,873 Positive - 19,207 deaths - 59,345 Hospitalizations \n'
            '(Last updated 10/03/2020)\n \n'
        '+ check www1.nyc.gov/site/doh/covid/covid-19-data.page         '
        '               ',
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
              'img/NY.png',
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
                      child: Image.asset('img/ny_0_0.png'),
                    ),
                    Expanded(
                      child: Image.asset('img/ny_0_1.png'),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('img/ny_1_0.jpg'),
                    ),
                    Expanded(
                      child: Image.asset('img/ny_1_1.jpg'),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('img/ny_2_1.jpg'),
                    ),
                    Expanded(
                      child: Image.asset('img/ny_2_0.jpg'),
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
