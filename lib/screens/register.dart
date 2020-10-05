import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';
import 'package:http/http.dart'  as http;
import 'package:oneconnect/constants/constants.dart' as Constants;

class Register extends StatefulWidget {
  static const routeName = '/register';
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OneConnect"),
      ),
      body: Center(
        child: Text("Register page"),
      ),
    );
  }
}
