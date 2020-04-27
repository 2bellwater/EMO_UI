import 'package:flutter/material.dart';
import 'package:flutter_emo_ui/bloc/UserStateManager.dart';
import 'package:flutter_emo_ui/provider/AppBlocProvider.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;
  UserStateManager _userStateManager;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    _userStateManager = AppBlocProvider.of(context).userStateManager;
    super.didChangeDependencies();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _userStateManager.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}