import 'package:flutter/material.dart';

import '../../../utils/sized_boxes.dart';
import '../cubits/login_cubit/login_cubit.dart';

Future<Object?> showErrorDialog(
  BuildContext context,
  LoginError state,
) {
  return showGeneralDialog(
    barrierDismissible: false,
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      return Center(
        child: Material(
          borderRadius: BorderRadius.circular(12),
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
      );
    },
  );
}
