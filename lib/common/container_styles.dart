import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BoxDecoration containerRoundedCorner() {
  return BoxDecoration(
    //color: Colors.blueGrey.withOpacity(0.5),
    border: Border.all(
         color: Colors.white.withOpacity(0.5),
        ),
    borderRadius: const BorderRadius.all(
      Radius.circular(0.0),
    ),
  );
}

BoxDecoration containerRoundedCornerWithBC() {
  return BoxDecoration(
    color: Colors.blueGrey.shade200,
    border: Border.all(
        //  color: Colors.black26,
        ),
    borderRadius: const BorderRadius.all(
      Radius.circular(12.0),
    ),
  );
}
BoxDecoration containerRoundedCornerWithDShade() {
  return BoxDecoration(
    color: Colors.blueGrey.shade900,
    border: Border.all(
      color: Colors.white,
    ),
    borderRadius: const BorderRadius.all(
      Radius.circular(15.0),
    ),
  );
}
BoxDecoration containerRoundedCornerForBottom() {
  return BoxDecoration(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(62.0),
      topRight: Radius.circular(62.0),
    ),
  );
}
