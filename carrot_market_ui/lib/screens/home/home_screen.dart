import 'package:carrot_market_ui/models/product.dart';
import 'package:carrot_market_ui/screens/home/components/product_item.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              '좌동',
              style: textTheme().headline1,
            ),
            SizedBox(
              width: 4.0,
            ),
            Icon(
              CupertinoIcons.chevron_down,
              color: Colors.black,
              size: 15.0,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.list_dash,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.bell,
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
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return ProductItem(
              product: productList[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 0,
              indent: 16.0,
              endIndent: 16.0,
              color: Colors.grey,
            );
          },
          itemCount: productList.length),
    );
  }
}
