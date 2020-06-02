// import 'dart:async';
// import 'dart:io';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_emo_ui/bloc/AppBloc.dart';
// import 'package:flutter_emo_ui/bloc/UserStateManager.dart';

class FCMApiManager {
  // final FirebaseMessaging _fcm = FirebaseMessaging();
  // //BuildContext _context;
  // AppBloc _appBloc;
  // StreamSubscription iosSubscription;

  // FCMApiManager(AppBloc appBloc) {
  //   //_context = context;
  //   _appBloc = appBloc;
  //   registerFCM();
  // }

  // registerFCM(){
  //   if (Platform.isIOS) {
  //       iOS_Permission();
  //   }
  //   print("getToken : ${_fcm.getToken()}");
  //   _fcm.getToken().then((token){
  //     print(token);
  //   });
  //   _fcm.configure(
  //       onMessage: (Map<String, dynamic> message) async {
  //           print("onMessage: $message");
  //           if(message.containsKey('data')) {
  //             UserStateManager _userStateManager = _appBloc.userStateManager;//AppBlocProvider.of(_context).sessionBloc;
  //             Map<dynamic, dynamic> data = message['data'];
  //             print("data type : ${data['type']}");
  //             if(data['type'] == '0') {
  //               // @TODO do message handle from the server
  //               //_sessionBloc.updateFriendToList(FriendListItem.fromJson(data));
  //               //
  //             } 
  //           }
  //       },
  //       onLaunch: (Map<String, dynamic> message) async {
  //         // app is from terminated to launched  
  //           print("onLaunch: $message");
  //           // TODO update all notifications and friendlist in android not ios
  //           UserStateManager _userStateManager = _appBloc.userStateManager;//AppBlocProvider.of(_context).sessionBloc;
  //           Map<dynamic, dynamic> data = message['data'];
  //           //@TODO do fecth notification list from the server
  //           // _sessionBloc.fetchAllFriendList();
  //           // _sessionBloc.fetchAllNotification();
            
  //       },
  //       onResume: (Map<String, dynamic> message) async {
  //         // app is into background
  //           print("onResume: $message");
  //           // TODO optional
  //       },
  //     ); 
  //     print("end");
      
  // }
  
  // void iOS_Permission() {
  //   _fcm.requestNotificationPermissions(
  //       IosNotificationSettings(sound: true, badge: true, alert: true)
  //   );
  //   _fcm.onIosSettingsRegistered
  //       .listen((IosNotificationSettings settings)
  //   {
  //     print("Settings registered: $settings");
  //   });
  // }
}
