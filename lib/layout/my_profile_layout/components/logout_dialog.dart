import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/shared/styes/colors.dart';

Widget logoutDialog(context) => AlertDialog(
      title: Text("Logout your Account"),
      content: Text("Are you sure?"),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 24.0, 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      actionsAlignment: MainAxisAlignment.spaceBetween,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Cancel",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: defaultColor,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "OK",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: defaultColor,
            ),
          ),
        ),
      ],
    );
