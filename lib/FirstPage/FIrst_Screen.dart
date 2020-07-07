import 'package:e_commerce/HomePage.dart/HomePage.dart';
import 'package:flutter/material.dart';

class first_screen extends StatefulWidget {
  @override
  _first_screenState createState() => _first_screenState();
}

class _first_screenState extends State<first_screen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
      const Duration(seconds: 4),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => homePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/e-commerce.png",
                height: 200,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
