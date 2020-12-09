import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emo_ui/model/UserState.dart';
import 'package:flutter_emo_ui/page/SubscribeUsersPage.dart';
import 'package:flutter_emo_ui/widget/BasicTitle.dart';
import 'package:flutter_emo_ui/widget/FlatBottomButton.dart';
import 'package:flutter_emo_ui/widget/HorizontalStateListview.dart';

//https://flutterawesome.com/play-music-audio-stored-in-assets-files-directly-from-flutter/
//https://github.com/OjasKarmarkar/Beats/blob/master/lib/screens/Player.dart
//https://beomseok95.tistory.com/312
class UserStatePage extends StatefulWidget {
  UserStatePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UserStatePageState createState() => _UserStatePageState();
}

class _UserStatePageState extends State<UserStatePage> {
  double _screenHeight;
  double _screenWidth;
  BuildContext _context;

  List<UserState> userStateList = [
    UserState("aaa", "good", false),
    UserState("aaa", "nice", false),
    UserState("aaa", "hello", false),
    UserState("aaa", "hahaha", false),
    UserState("aaa", "notBad", false)
  ];

  @override
  Widget build(BuildContext context) {
    _context = context;
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      //appBar: getAppBar(context),
      body: getBody(),
      bottomNavigationBar: getBottomButtons(),
    );
  }

  Widget getBody() {
    return SafeArea(
        bottom: false,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Center(
                    child: getStateImageArea(),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Store opened",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      //getEditTextButton()
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: getEditTextButton(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BasicTitle(
                    text: "Bookmark",
                    trailing: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25.0,
                        ),
                        onPressed: () {
                          print("My coupons button clicked");
                          // go to bookmark edit page
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => SubscribeUsersPage()));
                        }),
                  ),
                  HorizontalStateListView(
                    bookmarks: userStateList,
                    height: _screenHeight / 5,
                  )
                ]))));
  }

  Widget getStateImageArea() {
    return MaterialButton(
      onPressed: () {
        print("getStateImageArea pressed");
      },
      color: Theme.of(context).primaryColor,
      child: Icon(
        Icons.photo,
        size: 120,
        color: Colors.white,
      ),
      padding: EdgeInsets.all(30),
      shape: CircleBorder(),
    );
  }

  Widget getEditTextButton() {
    return MaterialButton(
      onPressed: () {
        print("getStateImageArea pressed");
      },
      color: Theme.of(context).primaryColor,
      child: Icon(
        Icons.edit,
        size: 20,
        color: Colors.white,
      ),
      //padding: EdgeInsets.all(5.0),
      shape: CircleBorder(),
    );
  }

  Widget getBottomButtons() {
    return FlatBottomButton(
      width: _screenWidth,
      text: "SAVE",
      onPressed: () {
        print("Save button pressed");
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => QRScanPage()));
      },
    );
  }
}
