import 'package:e_commerce/constract.dart';
import 'package:flutter/material.dart';

import 'FirstPage/FIrst_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kTextColor,
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: first_screen(),
    );
  }
}
