import 'package:flutter/material.dart';

import 'const.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // AudioContext a= AudioContext();
  List<String> categories = [
    'All',
    'Deserts',
    'Ice Cream',
    'Cakes',
    'Cookies',
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return buildCategory(index);
            }),
      ),
    );
  }

  buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: selected == index ? Colors.black : kTextLightColor),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPadding / 4),
              width: 30,
              height: 3,
              color: selected == index ? Colors.black : kTextLightColor,
            )
          ],
        ),
      ),
    );
  }
}
