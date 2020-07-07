import 'package:e_commerce/Details/detailBody.dart';
import 'package:e_commerce/constract.dart';
import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //each product have a diffrent color
        backgroundColor: product.color,
        appBar: buildAppBar(context),
        body: detailBody(
          product: product,
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: FaIcon(FontAwesomeIcons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: FaIcon(FontAwesomeIcons.shoppingBasket),
          onPressed: () {},
        ),
        SizedBox(
          width: KDefaultPadding / 2,
        )
      ],
    );
  }
}
