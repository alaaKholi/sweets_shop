import 'package:cake_shop_app/const.dart';
import 'package:cake_shop_app/product.dart';
import 'package:flutter/material.dart';

import 'card.dart';
import 'categories.dart';
import 'item_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text('Recent Orders',
              style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 1.1,
                  color: kTextColor,
                  fontWeight: FontWeight.bold)),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding / 2),
                itemBuilder: (context, index) {
                  return ProductItemCard(
                    product: products[index],
                    onPress: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemScreen(
                          product: products[index],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
