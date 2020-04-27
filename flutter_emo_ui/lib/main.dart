import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_emo_ui/bloc/AppBloc.dart';
import 'package:flutter_emo_ui/page/MainPage.dart';
import 'package:flutter_emo_ui/provider/AppBlocProvider.dart';
import 'package:flutter_emo_ui/util/const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AppBloc appBloc = AppBloc(context);
    bool isDark = false;
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: isDark ? Constants.darkPrimary : Constants.lightPrimary,
      statusBarIconBrightness: isDark?Brightness.light:Brightness.dark,
    ));
    return AppBlocProvider(
        appBloc: appBloc,
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: Constants.appName,
            theme: isDark ? Constants.darkTheme : Constants.lightTheme,
            home: MainPage()
            //home: LoginMainPage(),
        )
    );
  }
}
