import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static const routeName = '/homepage';
  @override
  _State createState() => _State();
}

class _State extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var aboutChild = AboutListTile(
      child: Text(
        "About",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
      applicationName: "OneConnect",
      applicationVersion: "v1.0.0",
      applicationLegalese: '© One Connect Africa',
      applicationIcon: SizedBox(
        height: 40.0,
        width: 40.0,
        child: Image(
          image: AssetImage('images/connectdark.png'),
        ),
      ), //FlutterLogo(),
      icon: Icon(
        Icons.info,
        color: Colors.blue,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("OneConnect"),
      ),
      body: Center(
        child: Text("Home page"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              accountName: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text("John Doe"),
              ),
              accountEmail: Text("johndoe@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("E",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
//              Icon(
//                Icons.person,
//                size: 50,
//              ),
              ),
            ),
            ListTile(
              title: Text('Home',style: TextStyle(
                color: Colors.blue,
              ),),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Update',style: TextStyle(
                color: Colors.blue,
              ),),
              leading: Icon(
                Icons.update,
                color: Colors.blue,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Airplay',style: TextStyle(
                color: Colors.blue,
              ),),
                leading: Icon(
                  Icons.airplay,
                  color: Colors.blue,
                ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Description',style: TextStyle(
                color: Colors.blue,
              ),),
              leading: Icon(
                Icons.description,
                color: Colors.blue,
              ),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            aboutChild,
          ],
        ),
      ),
    );
  }
}
