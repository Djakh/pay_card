import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar (
  backgroundColor: Colors.blue,
title: Text ("Another page"),
),

body: Center(child: FlatButton (
  color: Colors.yellow[300],
  onPressed: () {
Navigator.pushNamed(context, '/home');

},
child: Text("transfer"),

)


),

      
    );
  }
}