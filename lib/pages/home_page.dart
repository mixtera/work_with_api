import 'package:flutter/material.dart';
import 'package:work_with_api/services/http.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = '';
  _listEmployee() {
    HttpService.GET(HttpService.Api_Employees, HttpService.emptyParam())
        .then((value) => {_showResponse(value)});
  }

  _showResponse(String value) {
    setState(() {
      data = value;
      print(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _listEmployee();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(data != null ? data : 'No data'),
      ),
    );
  }
}
