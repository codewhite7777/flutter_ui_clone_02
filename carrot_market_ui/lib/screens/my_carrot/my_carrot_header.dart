import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            _buildProfileRow(),
            SizedBox(
              height: 30.0,
            ),
            _buildProfileButton(),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton(
                  '판매내역',
                  FontAwesomeIcons.receipt,
                ),
                _buildRoundTextButton(
                  '구매내역',
                  FontAwesomeIcons.shoppingBag,
                ),
                _buildRoundTextButton(
                  '관심목록',
                  FontAwesomeIcons.heart,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65.0,
              height: 65.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  'https://placeimg.com/200/100/people',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 16.0,
        ),
        Column(
          children: [
            Text(
              'developer',
              style: textTheme().headline2,
            ),
            SizedBox(height: 10.0),
            Text('좌동 #00912'),
          ],
        ),
      ],
    );
  }

  Widget _buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFD4D5DD),
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        height: 45,
        child: Center(
          child: Text(
            '프로필 보기',
            style: textTheme().subtitle1,
          ),
        ),
      ),
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color.fromRGBO(255, 226, 208, 1),
            border: Border.all(color: Color(0xFFD4C5DD), width: 0.5),
          ),
          width: 60.0,
          height: 60.0,
          child: Icon(
            iconData,
            color: Colors.orange,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: textTheme().subtitle1,
        )
      ],
    );
  }
}
