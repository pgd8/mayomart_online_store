import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

showLoading(context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) =>
        Row(
          children: [
            CircularProgressIndicator(),
            Text(
              AppLocalizations.of(context)!.loading,
            ),
          ],
        ),);
}

hideDialog(context) {
  Navigator.pop(context);
}
