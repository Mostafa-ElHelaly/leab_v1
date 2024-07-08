import 'package:flutter/material.dart';
import 'package:globaladvice_new/core/utils/config_size.dart';

void errorSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message),
    margin: EdgeInsets.only(
        bottom: ConfigSize.defaultSize! ,
        left: ConfigSize.screenWidth! * .1,
        right: ConfigSize.screenWidth! * .1),
    backgroundColor: Colors.red.withOpacity(.9),
    behavior: SnackBarBehavior.floating,
    action: SnackBarAction(
      label: 'UNDO',
      disabledTextColor: Colors.white,
      textColor: Colors.white,
      onPressed: () {
        // Few lines of code to undo the change.
      },
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
void successSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message),
    margin: EdgeInsets.only(
        bottom: ConfigSize.screenHeight! * .88,
        left: ConfigSize.screenWidth! * .1,
        right: ConfigSize.screenWidth! * .1),
    backgroundColor: Colors.green.withOpacity(.9),
    behavior: SnackBarBehavior.floating,
    action: SnackBarAction(
      label: 'UNDO',
      disabledTextColor: Colors.white,
      textColor: Colors.white,
      onPressed: () {
        // Few lines of code to undo the change.
      },
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}