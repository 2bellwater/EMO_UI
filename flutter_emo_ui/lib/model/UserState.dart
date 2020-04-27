import 'dart:convert' as convert;

class UserState {
  String _userID;
  String _stateName;
  bool _blocked;

  String get userID => _userID;
  String get state => _stateName;
  bool get blocked => _blocked;

  String toJson() {
    var request = {};
    request['ID'] = _userID;
    request['state'] = _stateName;

    return convert.jsonEncode(request);
  }

  void showNotification() {

  }

}