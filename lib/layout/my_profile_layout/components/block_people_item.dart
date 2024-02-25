import 'package:flutter/material.dart';
import 'package:project1/shared/styes/colors.dart';

Widget blockPeopleItem({String? image, String? name}) {
  return ListTile(
    onTap: () {},
    leading: InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: defaultColor,
            width: 3,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            image!,
          ),
          radius: 35,
        ),
      ),
    ),
    trailing: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.person_off_outlined,
        size: 28,
      ),
      color: defaultColor,
    ),
    title: Text(
      name!,
      style: TextStyle(
        fontSize: 20,
        fontStyle: FontStyle.italic,
      ),
    ),
  );
}
