import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../tokens/button_style.dart';
import '../cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.controller,
  });

  final ValueNotifier<bool> controller;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, value, child) => ElevatedButton(
        onPressed: () {
          context.read<LoginCubit>().login();
        },
        style: AppButtonStyles.loginButtonStyle(),
        child: SizedBox(
          width: double.maxFinite,
          height: 50,
          child: Center(
            child: Text(
              value ? 'Sign In' : 'Sing Up',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
