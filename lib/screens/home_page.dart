import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  static const routeName = '/homepage';
  @override
  _State createState() => _State();
}

class _State extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OneConnect"),
      ),
      body: Center(
        child: Text("Home page"),
      ),
    );
  }
}
