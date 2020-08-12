import 'package:flutter/material.dart';

import 'const.dart';
import 'product.dart';
import 'quantity.dart';

class ItemScreen extends StatelessWidget {
  final Product product;
  ItemScreen({this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product.color,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context)),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height * 0.47),
            padding: EdgeInsets.only(top: 60, left: 30, right: 30),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    /*  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Color',
                              style: TextStyle(
                                  fontSize: 20,
                                  //  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          Row(
                            children: <Widget>[
                              buildColorSelector(Colors.red, true),
                              buildColorSelector(Colors.blue),
                              buildColorSelector(Colors.yellow),
                            ],
                          ),
                        ],
                      ),
                    ),*/
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Size',
                              style: TextStyle(
                                  fontSize: 22,
                                  // color: Colors.white10,
                                  fontWeight: FontWeight.w600)),
                          Text(product.size,
                              style: TextStyle(
                                  color: kTextColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(product.description,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w400)),
                ),
                Quantity(),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: product.color)),
                        child: IconButton(
                            icon: Icon(
                              Icons.add_shopping_cart,
                              color: product.color,
                            ),
                            onPressed: () {}),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 60,
                          child: FlatButton(
                            color: product.color,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Text('Order Now',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Bla Bla Deserts',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)),
                Text(product.title,
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: 'price\n'),
                            TextSpan(
                                text: '\$ ${product.price}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Hero(
                          tag: product.image,
                          child: Image.asset(
                            product.image,
                            fit: BoxFit.fill,
                            width: 160,
                            height: 250,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildColorSelector(Color color, [bool isSelected = false]) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding / 4),
      padding: EdgeInsets.all(2.5),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? color : Colors.transparent, width: 1.2)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
