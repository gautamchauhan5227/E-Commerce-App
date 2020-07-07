import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cartCounter.dart';

class CounterWithFav extends StatelessWidget {
  const CounterWithFav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: FaIcon(
            FontAwesomeIcons.heart,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
