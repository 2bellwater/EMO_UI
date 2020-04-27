import 'package:flutter_emo_ui/model/UserState.dart';
import 'package:flutter_emo_ui/restApi/UserStateApiManager.dart';

class UserStateRepository {
  final _restApiManager = UserStateApiManager();

  Future<int> saveUserStateToServer(UserState userState) => _restApiManager.saveUserStateToServer(userState);

}