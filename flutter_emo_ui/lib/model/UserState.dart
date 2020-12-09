import 'dart:convert' as convert;

class UserState {
  String _userID;
  String _stateName;
  bool _blocked;

  UserState(this._userID, this._stateName, this._blocked);

  String get userID => _userID;
  String get stateName => _stateName;
  bool get blocked => _blocked;

  String toJson() {
    var request = {};
    request['ID'] = _userID;
    request['state'] = _stateName;

    return convert.jsonEncode(request);
  }

  void showNotification() {}
}
