import 'package:flutter/material.dart';
import 'package:flutter_emo_ui/page/UserStatePage.dart';
import 'package:google_fonts/google_fonts.dart';

// https://github.com/piyushsinha24/flutter_bloc_example/tree/master/lib
// https://medium.com/@develodroid/flutter-v-material-design-ii-flutter-1-0-3a5a52811707
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EMO UI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.grey,
        primaryColor: Colors.grey[800],
        accentColor: Colors.brown,
        backgroundColor: Colors.brown[900],
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: HomePage(),
      home: UserStatePage(),
    );
  }
}
