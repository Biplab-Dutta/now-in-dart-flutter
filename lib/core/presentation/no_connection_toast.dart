import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

Future<void> showNoConnectionToast(
  String message,
  BuildContext context,
) async {
  await showFlash(
    context: context,
    duration: const Duration(seconds: 2),
    builder: (context, controller) {
      return FlashBar(
        controller: controller,
        backgroundColor: Colors.black.withOpacity(0.7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.all(8),
        content: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            message,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      );
    },
  );
}
