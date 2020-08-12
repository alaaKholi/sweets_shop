import 'package:flutter/material.dart';

import 'const.dart';
import 'product.dart';

class ProductItemCard extends StatelessWidget {
  final Product product;
  final Function onPress;
  ProductItemCard({
    this.product,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 0),
                      blurRadius: 6,
                      spreadRadius: 1,
                    )
                  ]),
              child: Hero(
                  tag: product.image,
                  child: Image(image: AssetImage(product.image))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(product.title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: kTextLightColor)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              "\$${product.price.toString()}",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: kTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
