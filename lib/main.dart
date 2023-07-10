import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/login/cubits/login_cubit/login_cubit.dart';
import 'features/login/pages/login_page.dart';
import 'routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: MaterialApp(
        scaffoldMessengerKey: GenerateRoute.scaffoldStateKey,
        navigatorKey: GenerateRoute.navigationKey,
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        onGenerateRoute: GenerateRoute.onGenerateRoute,
      ),
    );
  }
}
