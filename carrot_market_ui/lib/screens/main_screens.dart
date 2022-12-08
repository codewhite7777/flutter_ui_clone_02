import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Container(
            color: Colors.orange[100],
            child: Center(
              child: Text(
                'IndexedStack 1',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.redAccent[100],
            child: Center(
              child: Text(
                'IndexedStack 2',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: theme().primaryColor,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            this._selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home), label: '홈'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble), label: '채팅'),
        ],
      ),
    );
  }
}
