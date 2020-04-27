import 'package:flutter/material.dart';
import 'package:flutter_emo_ui/bloc/UserStateManager.dart';

class AppBloc {
  UserStateManager _userStateBloc;

  AppBloc(BuildContext context) {
    _userStateBloc = UserStateManager();
  }

  UserStateManager get userStateManager => _userStateBloc;
}