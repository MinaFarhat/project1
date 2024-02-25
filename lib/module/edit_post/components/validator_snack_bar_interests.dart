import 'package:flutter/material.dart';
import 'package:project1/shared/components/components.dart';

SnackBar validatorSnackBarInterests = SnackBar(
  content: Text(
    'You cannot choose more than two interests',
    textAlign: TextAlign.center,
  ),
  backgroundColor: chooseToastColor(
    ToastState.ERROR,
  ),
  duration: Duration(seconds: 5),
);
