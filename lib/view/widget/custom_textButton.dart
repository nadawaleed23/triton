import 'package:flutter/material.dart';


Widget customTextButton(context, widget,
    {required String text, required Color textColor}) {
  return TextButton(
    onPressed: () {

    },
    child: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 12,
      ),
    ),
  );
}