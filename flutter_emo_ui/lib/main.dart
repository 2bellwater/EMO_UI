import 'package:expandable_bottom_bar/expandable_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_emo_ui/bloc/UserStateManager.dart';
import 'package:flutter_emo_ui/page/AppRouterPage.dart';
import 'package:flutter_emo_ui/page/UserStatePage.dart';
import 'package:flutter_emo_ui/theme/dark.dart';
import 'package:flutter_emo_ui/util/const.dart';

// https://github.com/piyushsinha24/flutter_bloc_example/tree/master/lib
// https://medium.com/@develodroid/flutter-v-material-design-ii-flutter-1-0-3a5a52811707
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final AppBloc appBloc = AppBloc(context);
    //bool isDark = false;
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: isDark ? Constants.darkPrimary : Constants.lightPrimary,
    //   statusBarIweconBrightness: isDark?Brightness.light:Brightness.dark,
    // ));
    return MultiBlocProvider(
        providers: [
          BlocProvider<UserStateManager>(
            create: (context) => UserStateManager(),
          ),
        ],
        child: MaterialApp(
          title: Constants.appName,
          theme: ThemeDark.dark(ThemeData.dark()),
          initialRoute: '/Login',
          routes: routes,
        ));
  }
}
