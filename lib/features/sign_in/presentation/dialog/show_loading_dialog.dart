import 'package:flutter/material.dart';

void showLoadingDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) => const Center(
            child: CircularProgressIndicator(),
          ));
}
