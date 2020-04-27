import 'package:flutter_emo_ui/bloc/AbstractBloc.dart';
import 'package:flutter_emo_ui/model/UserState.dart';
import 'package:flutter_emo_ui/repository/UserStateRepository.dart';
import 'package:rxdart/rxdart.dart';

class UserStateManager extends AbstractBloc {
  final _repository = UserStateRepository();

  final _groupStateFetcher = PublishSubject<UserState>();

//  Observable<List<UserState>> get groupStates => _groupStateFetcher.stream;

  Future<int> saveUserStateToServer(UserState userState) async {
    int result = await _repository.saveUserStateToServer(userState);
    //_sessionFetcher.sink.add(sessionModel);
    return result;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _groupStateFetcher.close();
  }

}