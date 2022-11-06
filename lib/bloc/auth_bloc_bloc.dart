import 'package:bloc/bloc.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../resources/auth_repository.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBlocBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final _repository = AuthRepository();
  AuthBlocBloc() : super(AuthBlocInitial()) {
    on<AuthBlocEvent>((event, emit) => emit(AuthBlocInitial()));
    on<GetAuthEvent>(_repository.onGetAuthEvent);
  }
}
