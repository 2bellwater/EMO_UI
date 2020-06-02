import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emo_ui/bloc/UserStateManager.dart';

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          backgroundColor: Theme.of(context).canvasColor,

          //Set to true for bottom appbar overlap body content
          extendBody: true,

          appBar: AppBar(
            title: Text("Panel Showcase"),
            backgroundColor: Theme.of(context).bottomAppBarColor,
          ),

          // Lets use docked FAB for handling state of sheet
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: GestureDetector(
            // Set onVerticalDrag event to drag handlers of controller for swipe effect
            onVerticalDragUpdate: DefaultBottomBarController.of(context).onDrag,
            onVerticalDragEnd: DefaultBottomBarController.of(context).onDragEnd,
            child: FloatingActionButton.extended(
              label: Text("Pull up"),
              elevation: 2,
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,

              //Set onPressed event to swap state of bottom bar
              onPressed: () => DefaultBottomBarController.of(context).swap(),
            ),
          ),

          // Actual expandable bottom bar
          bottomNavigationBar: BottomExpandableAppBar(
            expandedHeight: 550,
            horizontalMargin: 16,
            shape: AutomaticNotchedShape(
                RoundedRectangleBorder(), StadiumBorder(side: BorderSide())),
            expandedBackColor: Theme.of(context).backgroundColor,
            expandedBody: Center(
              child: Text("Hello world!"),
            ),
            bottomAppBarBody: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Tets",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    child: Text(
                      "Stet",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}