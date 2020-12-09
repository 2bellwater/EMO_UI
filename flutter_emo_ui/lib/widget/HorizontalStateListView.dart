import 'package:flutter/material.dart';
import 'package:flutter_emo_ui/model/UserState.dart';

class HorizontalStateListView extends StatelessWidget {
  final List<dynamic> bookmarks;
  final double width;
  final double height;
  final Function onTap;

  const HorizontalStateListView(
      {Key key, this.bookmarks, this.width, this.height, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      width: double.infinity,
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: bookmarks.length,
        itemBuilder: (ctx, index) {
          return InkWell(
            child: HorizontalStateListItem(
              userState: bookmarks[index],
            ),
            onTap: //() => onTap(ctx, index),
                () {
              print("item selected");
            },
          );
        },
      ),
    );
  }
}

class HorizontalStateListItem extends StatelessWidget {
  final UserState userState;
  const HorizontalStateListItem({Key key, this.userState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          getStateImageArea(context),
          Expanded(
              child: Center(
            child: Text(
              userState.stateName,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
          ))
        ],
      ),
    );
  }

  Widget getStateImageArea(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        print("getStateImageArea pressed");
      },
      color: Theme.of(context).primaryColor,
      child: Icon(
        Icons.person,
        size: 50,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(5),
      shape: CircleBorder(),
    );
  }
}
