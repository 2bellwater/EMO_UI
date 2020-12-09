import 'package:flutter/material.dart';
import 'package:flutter_emo_ui/model/UserState.dart';
import 'package:flutter_emo_ui/widget/BasicTitle.dart';
import 'package:flutter_emo_ui/widget/SearchBox.dart';

class SubscribeUsersPage extends StatefulWidget {
  SubscribeUsersPage({Key key}) : super(key: key);

  @override
  _SubscribeUsersPageState createState() => _SubscribeUsersPageState();
}

class _SubscribeUsersPageState extends State<SubscribeUsersPage> {
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
        body: SafeArea(
            child: Column(
          children: [
            getAppBar(),
            SizedBox(
              height: 10.0,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: BasicTitle(
                  text: "Subscribing",
                )),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                width: _screenWidth,
                height: _screenHeight,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: getSubscribeUsersListView(),
              ),
            )
          ],
        )));
  }

  Widget getAppBar() {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 25.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Expanded(
            child: SearchBox(
          audioFocus: false,
        ))
      ],
    );
  }

  Widget getSubscribeUsersListView() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: userStateList.length,
      itemBuilder: (ctx, index) {
        return InkWell(
          child: getSubscribeUsersItem(index),
          onTap: //() => onTap(ctx, index),
              () {
            print("item selected");
          },
        );
      },
    );
  }

  Widget getSubscribeUsersItem(int index) {
    return Card(
      color: Theme.of(context).primaryColor,
      child: ListTile(
        autofocus: false,
        leading: IconButton(
          icon: Icon(
            Icons.person,
            color: Colors.white,
            size: 25.0,
          ),
          onPressed: null,
        ),
        title: Text(userStateList[index].stateName,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Text("11:14 12/07 2020",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
