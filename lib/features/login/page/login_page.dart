import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../routes.dart';
import '../../../utils/loading.dart';
import '../atoms/login_button.dart';
import '../atoms/sized_boxes.dart';
import '../atoms/welcome_message.dart';
import '../cubit/login_cubit.dart';
import '../organism/credential_form.dart';
import '../organism/login_tab_bar.dart';

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
                SizedBox(height: MediaQuery.of(context).size.height * .55),
                LoginButton(controller: showLogin),
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
  if (state is Error) {
    await showErrorDialog(context, state);
  }
  if (state is LoggedIn) {
    GenerateRoute.navigationKey.currentState?.pushNamed(RouteNames.loggedIn);
  }
}

Future<Object?> showErrorDialog(
  BuildContext context,
  Error state,
) {
  return showGeneralDialog(
    barrierDismissible: false,
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Material(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(state.message),
                  const VSizedBox16(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: const Text('Retry'),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
