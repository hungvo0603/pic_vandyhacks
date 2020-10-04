import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vandyhack/pages/new_page1_ill.dart';
import 'package:vandyhack/pages/new_page2_Cali.dart';
import 'package:vandyhack/pages/new_page3_ny.dart';
import 'package:vandyhack/pages/updatingpage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.teal[200],
          Colors.teal[600],
          Colors.teal[800]
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("RETRO : COVID-19 Edition",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 60)),
                    ]),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  child: Stack(children: <Widget>[
                    Positioned(
                        child: Container(
                      child: Align(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white70),
                          width: 200,
                          height: 150,
                        ),
                        alignment: Alignment.center,
                      ),
                      height: 154,
                    )),
                    Positioned(
                      width: 60,
                      height: 60,
                      top: 140,
                      left: 260,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white70),
                      ),
                    ),
                    Positioned(
                      width: 30,
                      height: 30,
                      top: 200,
                      left: 230,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white70),
                      ),
                    ),
                  ]),
                ),
              ),
            ]),
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Touch the drawer to begin'),
        backgroundColor: Colors.teal[200],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('img/map.png')),
                  //color: Colors.blue,
                ),
                child: Stack(children: <Widget>[
                  Positioned(
                      bottom: 12.0,
                      left: 16.0,
                      child: Text("List of States",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500))),
                ])),
            ListTile(
              title: Text('Illinois'),
              trailing: Icon(Icons.arrow_right),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "img/ill.png"), // no matter how big it is, it won't overflow
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ill()));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('New York'),
              trailing: Icon(Icons.arrow_right),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "img/NY.png"), // no matter how big it is, it won't overflow
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ny()));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('California'),
              trailing: Icon(Icons.arrow_right),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "img/cali.png"), // no matter how big it is, it won't overflow
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cali()));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Florida'),
              trailing: Icon(Icons.arrow_right),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "img/florida.png"), // no matter how big it is, it won't overflow
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Updatepage()));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Texas'),
              trailing: Icon(Icons.arrow_right),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "img/Texas.png"), // no matter how big it is, it won't overflow
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Updatepage()));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Washington'),
              trailing: Icon(Icons.arrow_right),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "img/Washing.png"), // no matter how big it is, it won't overflow
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Updatepage()));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(' Hawaii'),
              trailing: Icon(Icons.arrow_right),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "img/Hawaii.png"), // no matter how big it is, it won't overflow
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Updatepage()));
                //Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Massachusetts'),
              trailing: Icon(Icons.arrow_right),
              leading: CircleAvatar(
                backgroundImage: AssetImage(
                    "img/Mass.png"), // no matter how big it is, it won't overflow
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Updatepage()));
                //Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
