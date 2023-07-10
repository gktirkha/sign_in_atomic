import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/sized_boxes.dart';
import '../cubits/login_cubit/login_cubit.dart';
import '../molecules/input_fields.dart';

class CredentialForm extends StatelessWidget {
  const CredentialForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputField(
          controller: context.read<LoginCubit>().emailController,
          label: 'Email',
        ),
        const VSizedBox8(),
        InputField(
          controller: context.read<LoginCubit>().passwordController,
          label: 'Password',
          isPasswordField: true,
        ),
      ],
    );
  }
}
