import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../routes.dart';
import '../../../utils/loading.dart';
import '../../../utils/sized_boxes.dart';
import '../atoms/login_button.dart';
import '../atoms/welcome_message.dart';
import '../cubits/login_cubit/login_cubit.dart';
import '../organisms/credential_form.dart';
import '../organisms/error_dialog.dart';
import '../organisms/login_tab_bar.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final ValueNotifier<bool> showLogin = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: BlocListener<LoginCubit, LoginState>(
        listener: loginBlocListener,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VSizedBox16(),
                const WelcomeMessage(),
                const VSizedBox16(),
                const VSizedBox8(),
                LoginTabBar(controller: showLogin),
                const VSizedBox16(),
                const CredentialForm(),
                const Spacer(),
                LoginButton(controller: showLogin),
                const VSizedBox16()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void loginBlocListener(BuildContext context, LoginState state) async {
  if (state.isLoading) {
    LoadingScreen.instance().show(context: context, text: 'Logging You In');
    return;
  } else {
    LoadingScreen.instance().hide();
  }
  if (state is LoginError) {
    await showErrorDialog(context, state);
  }
  if (state is LoggedIn) {
    GenerateRoute.navigationKey.currentState?.pushNamed(RouteNames.loggedIn);
  }
}
