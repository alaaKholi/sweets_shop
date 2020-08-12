import 'package:flutter/material.dart';

import 'const.dart';

class Quantity extends StatefulWidget {
  const Quantity({
    Key key,
  }) : super(key: key);

  @override
  _QuantityState createState() => _QuantityState();
}

class _QuantityState extends State<Quantity> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildQuantityButton(Icons.remove, () {
          if (quantity > 0) {
            setState(() {
              quantity--;
            });
          }
        }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(quantity.toString().padLeft(2, "0"),
              style: TextStyle(
                  fontSize: 30,
                  color: kTextColor,
                  fontWeight: FontWeight.w600)),
        ),
        buildQuantityButton(Icons.add, () {
          setState(() {
            quantity++;
          });
        })
      ],
    );
  }

  SizedBox buildQuantityButton(IconData icon, Function press) {
    return SizedBox(
      width: 50,
      height: 40,
      child: OutlineButton(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPressed: press,
          child: Icon(icon)),
    );
  }
}
