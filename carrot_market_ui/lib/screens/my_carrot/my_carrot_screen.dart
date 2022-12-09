import 'package:carrot_market_ui/models/icon_menu.dart';
import 'package:carrot_market_ui/screens/my_carrot/components/card_icon_menu.dart';
import 'package:carrot_market_ui/screens/my_carrot/my_carrot_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('나의 당근'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(
            iconMenuList: iconMenu1,
          ),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(
            iconMenuList: iconMenu2,
          ),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(
            iconMenuList: iconMenu3,
          ),
        ],
      ),
    );
  }
}
