import 'package:flutter/material.dart';
import 'package:pay_card/another_class.dart';

import 'home_page.dart';

void main() {
  runApp(MaterialApp(
initialRoute: "another",
routes: 
{
  "/home": (context) => HomePage(),
  "another": (context) => AnotherPage(),
}
,

  ));
}
