import 'package:e_commerce/Components/body.dart';
import 'package:e_commerce/constract.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: Body(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: kTextLightColor,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: FaIcon(FontAwesomeIcons.search),
          onPressed: () {},
          color: kTextLightColor,
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.shoppingBasket),
          onPressed: () {},
          color: kTextLightColor,
        ),
        SizedBox(
          width: KDefaultPadding / 2,
        )
      ],
    );
  }
}
