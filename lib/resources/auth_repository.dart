import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert' as convert;

import '../bloc/auth_bloc_bloc.dart';

class AuthRepository {
  Future<void> onGetAuthEvent(
      GetAuthEvent event, Emitter<AuthBlocState> emit) async {
    Response response;
    emit(LoadingAuthState());
    try {
      response = await http.post(
        Uri.parse("http://localhost:3000/rest/visitor/register"),
        body: convert.jsonEncode({
          'username': event.username,
        }),
      );
      emit(LoadedAuthState());
      if (kDebugMode) {
        print(response.body);
      }
    } catch (_) {
      emit(FailureLoginState());
    }
  }
}
