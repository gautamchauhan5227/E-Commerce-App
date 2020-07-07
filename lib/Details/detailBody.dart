import 'package:e_commerce/Details/Description.dart';
import 'package:e_commerce/Details/addTocart.dart';
import 'package:e_commerce/Details/cartCounter.dart';
import 'package:e_commerce/Details/productTitlenImg.dart';
import 'package:e_commerce/constract.dart';
import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ColorAndSize.dart';
import 'CounterAndFav.dart';

class detailBody extends StatelessWidget {
  final Product product;

  const detailBody({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //it provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: KDefaultPadding,
                    right: KDefaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      // SizedBox(
                      //   height: KDefaultPadding / 2,
                      // ),
                      Description(product: product),
                      // SizedBox(
                      //   height: KDefaultPadding / 2,
                      // ),
                      CounterWithFav(),
                      // SizedBox(
                      //   height: KDefaultPadding / 2,
                      // ),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
