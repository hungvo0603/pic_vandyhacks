import 'package:flutter/material.dart';
import 'package:vandyhack/main.dart';
import 'package:vandyhack/pages/authentication/login_page.dart';

class Cali extends StatelessWidget {
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
                    'State of California',
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
              Text(
                'Share your stories',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        ' 819,436 Positive - 16,074 deaths - 14,998,888 tests \n'
        ' Updated October 3, 2020 at 11:00 AM   \n \n '
        '+ Unable to stop the spread completely, on March 19 Newsom became the first governor to issue a shelter-in-place mandate.'
        '+ Disneyland and movie theaters are closed but grocery stores and pharmacies are open \n '
        '+ state regulators loosened restrictions on alcohol and cannabis\n'
        '+ Restaurants can sell cocktails to go and weed customers can receive contactless deliveries...\n'
        '(calmatters.org/explainers/coronavirus-california-explained-newsom/) \n'
        '+ for more information check: https://covid19.ca.gov/',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Retro : Covid-19',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Retro : Covid-19'),
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
              'img/cali.png',
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
                  children: [
                    Text('Before'),
                    Text('After'),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('img/cali_0_0.jpg'),
                    ),
                    Expanded(
                      child: Image.asset('img/cali_0_1.jpg'),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('img/cali_1_0.jpg'),
                    ),
                    Expanded(
                      child: Image.asset('img/cali_1_1.jpg'),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset('img/cali_2_0.jpg'),
                    ),
                    Expanded(
                      child: Image.asset('img/cali_2_1.jpg'),
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
