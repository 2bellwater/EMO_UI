import 'package:flutter_emo_ui/api_provider/UserStateApiProvider.dart';
import 'package:flutter_emo_ui/model/UserState.dart';

class UserStateRepository {
  final _restApiManager = UserStateApiProvider();

  Future<int> saveUserStateToServer(UserState userState) => _restApiManager.saveUserStateToServer(userState);

}