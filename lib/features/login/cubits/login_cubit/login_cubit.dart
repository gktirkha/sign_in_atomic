import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginInitial(isLoading: false));
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    emit(const LoginInitial(isLoading: true));
    try {
      http.Response res = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailController.text,
          'password': passwordController.text,
        },
      );

      log(res.statusCode.toString(), name: 'Status Code');
      log(jsonDecode(res.body).toString(), name: 'response');

      if (res.statusCode == 400) {
        throw Exception('Invalid Email ID or Password');
      }

      if (res.statusCode != 200) {
        throw Exception('Failed to login');
      }

      emit(const LoggedIn(isLoading: false));
    } catch (e) {
      emit(LoginError(message: e.toString(), isLoading: false));
    } finally {
      emailController.clear();
      passwordController.clear();
    }
  }
}
