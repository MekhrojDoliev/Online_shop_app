import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:shop_app/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg",
            //By default our icon is white
            color: kTextColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg",
            //By default our icon is white
            color: kTextColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
