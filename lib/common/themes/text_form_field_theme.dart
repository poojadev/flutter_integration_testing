import 'package:flutter/material.dart';





InputDecoration basicTheme(String hintText)
{
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    filled: true,

    hintText:hintText,
    fillColor: Colors.white,
  );
}

