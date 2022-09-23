import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/products.dart';
import 'package:shop_app/screens/home/components/categorries.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold), //added ?
          ),
        ),
        Categories(),
        ItemCard(),
        // Expanded(
        //     child: GridView.builder(
        //   gridDelegate:
        //       SilverGridDelegateWithFixedCrossAxisCount(contextcrossAxisCount: 2),
        //   itemBuilder: (context, index) => ItemCard(),
        // ),
        // ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  
  final Product product;
  final Function press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            color: products[0].color,
            borderRadius:
                BorderRadius.circular(16), //makses square box circular
          ),
          child: Image.asset(products[0].image),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              //product is out demo list
              products[0].title,
              style: TextStyle(color: kTextLightColor),
            )),
        Text(
          "\$234",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
