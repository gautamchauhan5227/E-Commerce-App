import 'package:flutter/material.dart';

import '../constract.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildSizedBox(
            icon: Icons.remove,
            press: () {
              if (numOfItem > 1) {
                setState(() {
                  numOfItem--;
                });
              }
            }),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: KDefaultPadding / 2, horizontal: KDefaultPadding / 2),
          child: Text(
            //if our item is less then 10 then it chows 01 02 like that
            numOfItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildSizedBox(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItem++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildSizedBox({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
