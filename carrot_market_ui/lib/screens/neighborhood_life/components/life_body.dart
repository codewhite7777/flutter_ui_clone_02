import 'package:carrot_market_ui/components/image_container.dart';
import 'package:carrot_market_ui/models/neighborhood_life.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  const LifeBody({
    Key? key,
    required this.neighborhoodLife,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFD4D5DD),
          ),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(
            thickness: 1,
            height: 1,
            color: Colors.grey[300],
          ),
          _buildTail(neighborhoodLife.commentCount),
        ],
      ),
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              color: Color.fromRGBO(247, 247, 247, 1),
            ),
            child: Text(
              neighborhoodLife.category,
              style: textTheme().bodyText2,
            ),
          ),
          Text(
            neighborhoodLife.date,
            style: textTheme().bodyText2,
          )
        ],
      ),
    );
  }

  Widget _buildWriter() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Row(
        children: [
          ImageContainer(
            borderRadius: 15,
            imageUrl: neighborhoodLife.profileImgUri,
            width: 30,
            height: 30,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: ' ${neighborhoodLife.userName}',
                  style: textTheme().bodyText1,
                ),
                TextSpan(text: ' ${neighborhoodLife.location}'),
                TextSpan(text: ' ?????? ${neighborhoodLife.authCount}???'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWriting() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          style: textTheme().bodyText1,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Visibility(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      visible: neighborhoodLife.contentImgUri != '',
    );
  }

  Widget _buildTail(int commentCount) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.smile,
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            '????????????',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 22,
          ),
          Icon(
            FontAwesomeIcons.commentAlt,
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            '???????????? ${commentCount}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
