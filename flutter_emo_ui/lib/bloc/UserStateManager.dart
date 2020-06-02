
import 'package:flutter_bloc/flutter_bloc.dart';

enum UserStateEvent {
  page_changed, 
  state_changed 
}

enum UserState {
  success,
  failed
}

class UserStateManager extends Bloc<UserStateEvent, UserState>{
  @override
  UserState get initialState => UserState.success;

  @override
  Stream<UserState> mapEventToState(UserStateEvent event) async* {
    switch (event) {
      case UserStateEvent.state_changed:
        yield UserState.success;
        break;
      default:
        yield UserState.failed;
        break;
    }
  }
}