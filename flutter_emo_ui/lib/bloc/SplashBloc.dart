import 'package:flutter_bloc/flutter_bloc.dart';

enum SplashEvent {
  page_changed, 
  state_changed 
}

enum SplashState {
  pending,
  finished
}

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  @override
  SplashState get initialState => SplashState.pending;

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    switch (event) {
      case SplashEvent.state_changed:
        yield SplashState.finished;
        break;
      default:
        yield SplashState.pending;
        break;
    }
  }
}